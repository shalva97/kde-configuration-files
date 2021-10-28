#!/usr/bin/env python
"""
Usage:
	plasmasetconfig # List all widget namespaces
	plasmasetconfig org.kde.plasma.digitalclock # List all config groups+keys
	plasmasetconfig org.kde.plasma.digitalclock Appearance showSeconds true
Install:
	chmod +x ~/Downloads/plasmasetconfig.py
	sudo cp ~/Downloads/plasmasetconfig.py /usr/local/bin/plasmasetconfig
Uninstall:
	sudo rm /usr/local/bin/plasmasetconfig
"""

# credit goes to Zren https://gist.github.com/Zren/764f17c26be4ea0e088f4a6a1871f528 give him a star!!

import argparse
import dbus
import os
import re
import subprocess
import sys

def writeConfigKey(args):
	widgetType = args.widget or ""
	configGroup = args.group or ""
	configKey = args.key or ""
	configValue = args.value or ""

	# print("widgetType", widgetType)
	# print("configGroup", configGroup)
	# print("configKey", configKey)
	# print("configValue", configValue)

	# https://userbase.kde.org/KDE_System_Administration/PlasmaDesktopScripting
	plasmaScript = """
	function forEachWidgetInContainment(containment, callback) {
		var widgets = containment.widgets();
		for (var widgetIndex = 0; widgetIndex < widgets.length; widgetIndex++) {
			var widget = widgets[widgetIndex];
			callback(widget, containment);
			if (widget.type == "org.kde.plasma.systemtray") {
				var childContainmentId = widget.readConfig("SystrayContainmentId");
				if (typeof childContainmentId !== "undefined") {
					var childContainment = desktopById(childContainmentId);
					if (typeof childContainment !== "undefined" && childContainment.type == "org.kde.plasma.private.systemtray") {
						forEachWidgetInContainment(childContainment, callback);
					}
				}
			}
		}
	}
	function forEachWidgetInContainmentList(containmentList, callback) {
		for (var containmentIndex = 0; containmentIndex < containmentList.length; containmentIndex++) {
			var containment = containmentList[containmentIndex];
			forEachWidgetInContainment(containment, callback);
		}
	}
	function forEachWidget(callback) {
		forEachWidgetInContainmentList(desktops(), callback);
		forEachWidgetInContainmentList(panels(), callback);
	}
	function forEachWidgetByType(type, callback) {
		forEachWidget(function(widget, containment) {
			if (widget.type == type) {
				callback(widget, containment);
			}
		});
	}
	function widgetSetProperty(args) {
		if (!(args.widgetType && args.configGroup && args.configKey)) {
			return;
		}
		forEachWidgetByType(args.widgetType, function(widget){
			widget.currentConfigGroup = [args.configGroup];
			widget.writeConfig(args.configKey, args.configValue);
			var newValue = widget.readConfig(args.configKey);
		});
	}
	var args = {
		widgetType: "{{widgetType}}",
		configGroup: "{{configGroup}}",
		configKey: "{{configKey}}",
		configValue: "{{configValue}}",
	}
	widgetSetProperty(args);
	"""

	plasmaScript = plasmaScript.replace('\n', ' ')
	plasmaScript = plasmaScript.replace("{{widgetType}}", widgetType)
	plasmaScript = plasmaScript.replace("{{configGroup}}", configGroup)
	plasmaScript = plasmaScript.replace("{{configKey}}", configKey)
	plasmaScript = plasmaScript.replace("{{configValue}}", configValue)

	# print(plasmaScript)

	# https://dbus.freedesktop.org/doc/dbus-python/tutorial.html
	# qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript ""
	session_bus = dbus.SessionBus()
	plasmashell_obj = session_bus.get_object('org.kde.plasmashell', '/PlasmaShell')
	plasmashell = dbus.Interface(plasmashell_obj, dbus_interface='org.kde.PlasmaShell')
	plasmashell.evaluateScript(plasmaScript)



#--- Package config/main.xml Parser
packageDirList = [
	os.path.expanduser('~/.local/share/plasma/plasmoids'),
	'/usr/share/plasma/plasmoids',
	os.path.expanduser('~/.local/share/plasma/wallpapers'),
	'/usr/share/plasma/wallpapers',
]

def findWidgetDir(namespace):
	for packageDir in packageDirList:
		filepath = os.path.join(packageDir, namespace)
		if os.path.isdir(filepath):
			return filepath

	return None

def getEntryDefault(text):
	pattern = r'<default>(.+?)<\/default>'
	m = re.search(pattern, text)
	if m:
		return m.group(1)
	else:
		return None

def getXmlAttr(text, key):
	pattern = key + r'\s*=\s*\"([^\">]+)\"' # There's unlikely to be escaped quotes
	m = re.search(pattern, text)
	if m:
		return m.group(1)
	else:
		return None


def iterGroupEntry(text):
	pattern = r'<entry ([^>]+)>(.+?)<\/entry>'
	for m in re.finditer(pattern, text, flags=re.DOTALL):
		# print(m)
		attrXml = m.group(1)
		innerXml = m.group(2)
		# print('entry', attrXml)
		entry = {
			'name': getXmlAttr(attrXml, 'name'),
			'type': getXmlAttr(attrXml, 'type'),
			'default': getEntryDefault(innerXml),
		}
		yield entry

def iterGroup(text):
	pattern = r'<group ([^>]+)>(.+?)<\/group>'
	for m in re.finditer(pattern, text, flags=re.DOTALL):
		# print(m)
		attrXml = m.group(1)
		innerXml = m.group(2)
		# print('group', attrXml)
		group = {
			'name': getXmlAttr(attrXml, 'name'),
			'entries': [],
		}

		for entry in iterGroupEntry(innerXml):
			group['entries'].append(entry)

		yield group



#--- Terminal Colors
class TC:
	RESET = '\033[0m'
	FG_BLACK='\033[30m'
	FG_RED='\033[31m'
	FG_GREEN='\033[32m'
	FG_ORANGE='\033[33m'
	FG_BLUE='\033[34m'
	FG_PURPLE='\033[35m'
	FG_CYAN='\033[36m'
	FG_LIGHTGREY='\033[37m'
	FG_DARKGREY='\033[90m'
	FG_LIGHTRED='\033[91m'
	FG_LIGHTGREEN='\033[92m'
	FG_YELLOW='\033[93m'
	FG_LIGHTBLUE='\033[94m'
	FG_PINK='\033[95m'
	FG_LIGHTCYAN='\033[96m'


def prettyValue(value):
	if value is None:
		return '\"\"'
	if ' ' in value:
		return '\"' + value.replace('\"', '\\\"') + '\"'
	else:
		return value.replace('\"', '\\\"')

def printConfigKey(namespace, group, entry):
	line = 'plasmasetconfig'
	line += ' ' + TC.FG_PINK + namespace
	line += ' ' + TC.FG_LIGHTBLUE + prettyValue(group['name'])
	line += ' ' + TC.FG_LIGHTGREEN + prettyValue(entry['name'])
	line += ' ' + TC.FG_YELLOW + prettyValue(entry['default'])
	line += ' ' + TC.FG_DARKGREY + '# ' + entry['type']
	line += TC.RESET
	print(line)

def printPackageConfigKeys(namespace):
	packageDir = findWidgetDir(namespace)
	if packageDir is None:
		print('Could not find a package with the namespace "{}"'.format(namespace))
		sys.exit(1)

	configPath = os.path.join(packageDir, 'contents/config/main.xml')

	if not os.path.isfile(configPath):
		print('Package at "{}" does not contain "contents/config/main.xml"'.format(packageDir))
		sys.exit(1)

	with open(configPath, 'r') as fin:
		text = fin.read()

	for group in iterGroup(text):
		for entry in group['entries']:
			printConfigKey(namespace, group, entry)

def printPackage(namespace, dirpath):
	line = 'plasmasetconfig'
	line += ' ' + TC.FG_PINK + namespace
	line += ' ' + TC.FG_DARKGREY + '# ' + dirpath
	line += TC.RESET
	print(line)

def printNamespaceList():
	namespaceList = set()
	for packageDir in packageDirList:
		if os.path.isdir(packageDir):
			for filename in sorted(os.listdir(packageDir)):
				filepath = os.path.join(packageDir, filename)
				if os.path.isdir(filepath):
					if filename not in namespaceList:
						namespaceList.add(filename)
						printPackage(filename, packageDir)



#--- Main
if __name__ == '__main__':
	parser = argparse.ArgumentParser()
	parser.add_argument("widget", type=str, help="widget namespace eg: 'org.kde.plasma.digitalclock'")
	parser.add_argument("group", type=str, help="config group")
	parser.add_argument("key", type=str, help="config key to modify")
	parser.add_argument("value", type=str, help="new value to store in config key")

	if len(sys.argv) == 1:
		# plasmasetconfig
		parser.print_usage()
		print()
		printNamespaceList()
		sys.exit(1)
	elif (len(sys.argv) == 2 or len(sys.argv) == 3) and sys.argv[1] != '-h':
		# plasmasetconfig [widget]
		# plasmasetconfig [widget] [group]
		widget = sys.argv[1]
		parser.print_usage()
		print()
		printPackageConfigKeys(widget)
		sys.exit(1)

	args = parser.parse_args()
	writeConfigKey(args)