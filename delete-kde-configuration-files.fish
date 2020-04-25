#!/usr/bin/fish

set fileList Trolltech.conf akregatorrc baloofilerc bluedevilglobalrc kactivitymanagerd-statsrc
set -a fileList kactivitymanagerdrc kateschemarc kcmfonts kcminputrc kconf_updaterc kded5rc
set -a fileList kdeglobals kfontinstuirc kglobalshortcutsrc khotkeysrc kmixctrlrc kmixrc
set -a fileList kscreenlockerrc ksmserverrc ksplashrc ktimezonedrc kwinrc kwinrulesrc plasma-localerc
set -a fileList plasma-nm plasma-org.kde.plasma.desktop-appletsrc plasmarc plasmashellrc
set -a fileList powermanagementprofilesrc startupconfig startupconfigfiles startupconfigkeys
set -a fileList krunnerrc touchpadxlibinputrc systemsettingsrc kxkbrc

rm $fileList
