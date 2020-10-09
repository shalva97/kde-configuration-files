#!/usr/bin/fish

#kwinrc
kwriteconfig5 --file $HOME/.config/kwinrc --group Windows --key BorderlessMaximizedWindows true
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandAllKey Meta
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandWindow1 "Activate, raise and pass click"
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandWindow2 "Activate, raise and pass click"
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandWindow3 "Activate, raise and pass click"
kwriteconfig5 --file $HOME/.config/kwinrc --group MouseBindings --key CommandWindowWheel "Scroll"
#disable stupid touch screen edges and weird corners and thir animations
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-Cube --key BorderActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-Cube --key BorderActivateCylinder "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-Cube --key BorderActivateSphere "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-Cube --key TouchBorderActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-Cube --key TouchBorderActivateCylinder "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-Cube --key TouchBorderActivateSphere "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-DesktopGrid --key BorderActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-DesktopGrid --key TouchBorderActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-PresentWindows --key BorderActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-PresentWindows --key BorderActivateAll "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-PresentWindows --key BorderActivateClass "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-PresentWindows --key TouchBorderActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-PresentWindows --key TouchBorderActivateAll "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group Effect-PresentWindows --key TouchBorderActivateClass "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group TabBox --key BorderActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group TabBox --key BorderAlternativeActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group TabBox --key TouchBorderActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group TabBox --key TouchBorderAlternativeActivate "9"
kwriteconfig5 --file $HOME/.config/kwinrc --group ElectricBorders --key Bottom "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group ElectricBorders --key BottomLeft "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group ElectricBorders --key BottomRight "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group ElectricBorders --key Left "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group ElectricBorders --key Right "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group ElectricBorders --key Top "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group ElectricBorders --key TopLeft "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group ElectricBorders --key TopRight "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group TouchEdges --key Bottom "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group TouchEdges --key Left "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group TouchEdges --key Right "None"
kwriteconfig5 --file $HOME/.config/kwinrc --group TouchEdges --key Top "None"
#set titlebar buttons
kwriteconfig5 --file $HOME/.config/kwinrc --group org.kde.kdecoration2 --key BorderSize "Normal"
kwriteconfig5 --file $HOME/.config/kwinrc --group org.kde.kdecoration2 --key ButtonsOnLeft "MF"
kwriteconfig5 --file $HOME/.config/kwinrc --group org.kde.kdecoration2 --key ButtonsOnRight "IAX"
kwriteconfig5 --file $HOME/.config/kwinrc --group org.kde.kdecoration2 --key CloseOnDoubleClickOnMenu "false"
kwriteconfig5 --file $HOME/.config/kwinrc --group org.kde.kdecoration2 --key ShowToolTips "false"
#a bit of sugar
kwriteconfig5 --file $HOME/.config/kwinrc  --group "Plugins"  --key "diminactiveEnabled" "true"
kwriteconfig5 --file $HOME/.config/kwinrc  --group "Plugins"  --key "fallapartEnabled" "true"
kwriteconfig5 --file $HOME/.config/kwinrc  --group "Plugins"  --key "kwin4_effect_dimscreenEnabled" "true"

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
#disable CTRL+ALT+L logout
kwriteconfig5 --file $HOME/.config/kglobalshortcutsrc  --group "ksmserver"  --key "Lock Session" "Screensaver\tMeta+L,Meta+L\tCtrl+Alt+L\tScreensaver,Lock Session"
#set super+space for pause/play
kwriteconfig5 --file $HOME/.config/kglobalshortcutsrc  --group "mediacontrol"  --key "playpausemedia" "Media Play\tMeta+Space,Media Play,Play/Pause media playback"
#curl https://raw.githubusercontent.com/shalva97/set-up-files/master/tmux.desktop > $HOME/.local/share/applications/tmux.desktop
#kwriteconfig5 --file $HOME/.config/kglobalshortcutsrc --group "tmux.desktop" --key _k_friendly_name "Launch tmux"
#kwriteconfig5 --file $HOME/.config/kglobalshortcutsrc --group "tmux.desktop" --key _launch "Meta+Return,none,Launch tmux"
#todo set keys...

#keyboard settings
kwriteconfig5 --file $HOME/.config/kcminputrc --group Keyboard --key KeyboardRepeating "0"
kwriteconfig5 --file $HOME/.config/kcminputrc --group Keyboard --key NumLock "2"
kwriteconfig5 --file $HOME/.config/kcminputrc --group Keyboard --key RepeatDelay "300"
kwriteconfig5 --file $HOME/.config/kcminputrc --group Keyboard --key RepeatRate "40"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "DisplayNames" ","
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "LayoutList" "ge,us"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "LayoutLoopCount" " -1"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "Model" "pc86"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "Options" "grp:alt_shift_toggle,grp_led:caps"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "ResetOldOptions" "true"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "ShowFlag" "false"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "ShowLabel" "true"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "ShowLayoutIndicator" "true"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "ShowSingle" "false"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "SwitchMode" "Global"
kwriteconfig5 --file $HOME/.config/kxkbrc  --group "Layout"  --key "Use" "true"

#background services
kwriteconfig5 --file $HOME/.config/kded5rc --group Module-appmenu --key autoload "false"
kwriteconfig5 --file $HOME/.config/kded5rc --group Module-baloosearchmodule --key autoload "false"
kwriteconfig5 --file $HOME/.config/kded5rc --group Module-browserintegrationreminder --key autoload "false"
kwriteconfig5 --file $HOME/.config/kded5rc --group Module-colorcorrectlocationupdater --key autoload "false"
#kwriteconfig5 --file $HOME/.config/kded5rc --group Module-keyboard --key autoload "false"
#kwriteconfig5 --file $HOME/.config/kded5rc --group Module-khotkeys --key autoload "false"
kwriteconfig5 --file $HOME/.config/kded5rc --group Module-ksysguard --key autoload "false"
kwriteconfig5 --file $HOME/.config/kded5rc --group Module-kwrited --key autoload "false"
kwriteconfig5 --file $HOME/.config/kded5rc --group Module-touchpad --key autoload "false"

#disable annoying sound and notification when changing volume
kwriteconfig5 --file $HOME/.config/plasmarc --group OSD --key Enabled "false"
#kwriteconfig cannot write -1 :( 
#i found the way, needs an empty space...
kwriteconfig5 --file $HOME/.config/plasmarc --group PlasmaToolTips --key Delay " -1"

#do not restore desktop session
kwriteconfig5 --file $HOME/.config/ksmserverrc --group General --key loginMode "default"

#disable file somthing...
kwriteconfig5 --file $HOME/.config/baloofilerc --group "Basic Settings" --key Indexing-Enabled "false"

#touchpad
kwriteconfig5 --file $HOME/.config/touchpadxlibinputrc --group "SynPS/2 Synaptics TouchPad" --key tapToClick "true"

#powermanagement
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group AC --group HandleButtonEvents  --key lidAction 32
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group AC --group HandleButtonEvents  --key powerButtonAction 1
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group AC --group HandleButtonEvents  --key triggerLidActionWhenExternalMonitorPresent false
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group Battery --group HandleButtonEvents  --key lidAction 32
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group Battery --group HandleButtonEvents  --key powerButtonAction 1
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group Battery --group HandleButtonEvents  --key triggerLidActionWhenExternalMonitorPresent false
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group LowBattery --group HandleButtonEvents  --key lidAction 32
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group LowBattery --group HandleButtonEvents  --key powerButtonAction 1
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group LowBattery --group HandleButtonEvents  --key triggerLidActionWhenExternalMonitorPresent false
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group AC --group SuspendSession  --key idleTime 1200000
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group AC --group SuspendSession  --key suspendThenHibernate false
kwriteconfig5 --file $HOME/.config/powermanagementprofilesrc  --group AC --group SuspendSession  --key suspendType 1
