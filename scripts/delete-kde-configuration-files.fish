#!/usr/bin/fish

set fileList Trolltech.conf akregatorrc baloofilerc bluedevilglobalrc kactivitymanagerd-statsrc
set -a fileList kactivitymanagerdrc kateschemarc kcmfonts kcminputrc kconf_updaterc kded5rc
set -a fileList kdeglobals kfontinstuirc kglobalshortcutsrc khotkeysrc kmixctrlrc kmixrc
set -a fileList kscreenlockerrc ksmserverrc ksplashrc ktimezonedrc kwinrc kwinrulesrc plasma-localerc
set -a fileList plasma-nm plasma-org.kde.plasma.desktop-appletsrc plasmarc plasmashellrc
set -a fileList powermanagementprofilesrc startupconfig startupconfigfiles startupconfigkeys
set -a fileList krunnerrc touchpadxlibinputrc systemsettingsrc kxkbrc PlasmaUserFeedback
set -a fileList kde.org/* kiorc klipperrc knfsshare kuriikwsfilterrc kwalletmanager5rc kwalletrc
set -a fileList plasma.emojierrc plasmanotifyrc PlasmaUserFeedback powerdevilrc kgammarc
set -a fileList kded_device_automounterrc device_automounter_kcmrc klaunchrc
set -a fileList trashrc kactivitymanagerd-switcher gtkrc-2.0 gtkrc baloofileinformationrc
set -a fileList breezerc

rm $fileList
