#!/usr/bin/fish

#kwinrc
kwriteconfig5 --file $HOME/.config/kwinrc --group Windows --key BorderlessMaximizedWindows true
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandAllKey Meta
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandWindow1 "Activate, raise and pass click"
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandWindow2 "Activate, raise and pass click"
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandWindow3 "Activate, raise and pass click"
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandWindowWheel "Scroll"

#krunnerrc
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key CharacterRunnerEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key DictionaryEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key Kill RunnerEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key PowerDevilEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key Spell CheckerEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key baloosearchEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key bookmarksEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key browsertabsEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key calculatorEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key desktopsessionsEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key konsoleprofilesEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key krunner_appstreamEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key kwinEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key locationsEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key org.kde.activitiesEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key org.kde.datetimeEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key org.kde.windowedwidgetsEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key placesEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key plasma-desktopEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key recentdocumentsEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key servicesEnabled "true"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key shellEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key unitconverterEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key webshortcutsEnabled "false"
kwriteconfig5 --file $HOME/.config/krunnerrc --group Plugins --key windowsEnabled "false"

#font
kwriteconfig5 --file $HOME/.config/kdeglobals --group General --key XftAntialias "true"
kwriteconfig5 --file $HOME/.config/kdeglobals --group General --key XftHintStyle ""
kwriteconfig5 --file $HOME/.config/kdeglobals --group General --key XftSubPixel "rgb"
kwriteconfig5 --file $HOME/.config/kdeglobals --group General --key fixed "Monospace,9,-1,5,50,0,0,0,0,0"
kwriteconfig5 --file $HOME/.config/kdeglobals --group General --key font "Cantarell,10,-1,5,50,0,0,0,0,0,Regular"
kwriteconfig5 --file $HOME/.config/kdeglobals --group General --key menuFont "Cantarell,10,-1,5,50,0,0,0,0,0,Regular"
kwriteconfig5 --file $HOME/.config/kdeglobals --group General --key shadeSortColumn "true"
kwriteconfig5 --file $HOME/.config/kdeglobals --group General --key smallestReadableFont "Cantarell,10,-1,5,50,0,0,0,0,0,Regular"
kwriteconfig5 --file $HOME/.config/kdeglobals --group General --key toolBarFont "Cantarell,10,-1,5,50,0,0,0,0,0,Regular"

#keybindings
#remove examples in custom shortcuts
set HOTKEYRC $HOME/.config/khotkeysrc
if test -e HOTKEYRC
  echo "" > HOTKEYRC
end

#todo set keys...

#keyboard settings
kwriteconfig5 --file $HOME/.config/kcminputrc --group Keyboard --key KeyboardRepeating "0"
kwriteconfig5 --file $HOME/.config/kcminputrc --group Keyboard --key NumLock "2"
kwriteconfig5 --file $HOME/.config/kcminputrc --group Keyboard --key RepeatDelay "300"
kwriteconfig5 --file $HOME/.config/kcminputrc --group Keyboard --key RepeatRate "50"

#background services
kwriteconfig5 --file $HOME/.config/kcminputrc Module-appmenu --key autoload "false"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-baloosearchmodule --key autoload "false"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-bluedevil --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-browserintegrationreminder --key autoload "false"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-colorcorrectlocationupdater --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-device_automounter --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-freespacenotifier --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-keyboard --key autoload "false"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-khotkeys --key autoload "false"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-kscreen --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-ksysguard --key autoload "false"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-ktimezoned --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-kwrited --key autoload "false"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-networkmanagement --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-networkstatus --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-plasmavault --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-proxyscout --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-remotenotifier --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-statusnotifierwatcher --key autoload "true"
kwriteconfig5 --file $HOME/.config/kcminputrc Module-touchpad --key autoload "false"
kwriteconfig5 --file $HOME/.config/kcminputrc PlasmaBrowserIntegration --key shownCount "1"
