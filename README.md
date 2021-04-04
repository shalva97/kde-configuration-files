### Some useful stuff
  * [hide title bar when windows are maximized](https://github.com/shalva97/kde-configuration-files/blob/b011186249deb8b3c268d5dab9cb0f84739127b8/setupKDE.fish#L4)
  * [Delete all (i hope) config files](https://github.com/shalva97/kde-configuration-files/blob/master/scripts/delete-kde-configuration-files.fish)
  * [kcmshell5 and plasmawindowed](https://github.com/shalva97/kde-configuration-files/blob/master/kcmshell5%20and%20plasmawindowed.md)
  * [dbus events](https://github.com/shalva97/kde-configuration-files/blob/master/qdbus_events.md)

# KDE config file paths

#### Panel
   * `.config/plasma-org.kde.plasma.desktop-appletsrc`

#### Appearance
   * Global Theme
      * `.config/kdeglobals`
      * `.config/kscreenlockerrc`
      * `.config/kwinrc`
      * `.config/gtkrc`
      * `.config/gtkrc-2.0`
      * `.config/gtk-4.0/*`
      * `.config/gtk-3.0/*`
      * `.config/ksplashrc`
   * Application Style
      * `.config/kdeglobals`
   * Plasma Style
      * `.config/plasmarc`
   * Colors
       * `.config/kdeglobals`
       * `.config/Trolltech.conf`
   * Window decorations
	   * `.config/breezerc`  (or your theme name)
	   * `.config/kwinrc`
   * Fonts
       * `.config/kdeglobals`
       * `.config/kcmfonts`
   * Icons
      * `.config/kdeglobals` [Icons]
   * Cursors
      * `.config/kcminputrc`
   * Font management
	   * `.config/kfontinstuirc`
   * Splash screen
	   * `.config/ksplashrc`

#### Workspace
   * Desktop behavior
      * General behavior
         * `.config/plasmarc`
      * [Screen Edges](#screen-edges)
         * `.config/kwinrc`
      * Desktop Effects
         * `.config/kwinrc`
         * `.config/kglobalshortcutsrc`
	 * Touch screen
	 * Virtual desktops
	 * Activities
   * Window Management
      * Window behavior
         * `.config/kwinrc`
      * Window Rules
         * `.config/kwinrulesrc`
	 * Task switcher
	 * KWin scripts
   * Shortcuts
      * Custom Shortcuts
         * `.config/khotkeys`
      * Global Shortcuts
         * `.config/kglobalshortcutsrc`
   * Startup and Shutdown
	  * Login screen
	  * Autostart
      * Background Services
          * `.config/kded5rc`
       * Desktop Session
          * `.config/ksmserverrc`
   * Search
      * KRunner
         * `.config/krunnerrc`
      * File Search
         * `.config/baloofilerc`
	 * Web Search Keywords
#### Personalization
   * Notifications
      * `.config/plasmanotifyrc`
   * Users
   * Regional Settings
	   * Language
       * Formats
           * `.config/plasma-localerc`
	   * Spell Check
       * Date & Time
           * `.config/ktimezonedrc`
   * Accessibility
      * `.config/kaccessrc`
   * Applications
	   * File associations
	   * Locations
	   * Launch Feedback
       * Default Applications
           * `.config/kdeglobals`
   * KDE Wallet
   * Online Accounts
   * User Feedback
	   * `.config/PlasmaUserFeedback`
#### Network
   * Connections
      * `/etc/NetworkManager/system-connections`
   * Settings
	   * Proxy
	   * Connection Preferences
	   * SSL Preferences
	   * Cache
	   * Cookies
	   * Browser Identification
	   * Windows Shares
#### Hardware
   * Input Devices
       * Keyboard
           * Hardware
               * `.config/kcminputrc`
           * layout
               * `.config/kxkbrc`
           * Advanced
               * `.config/kxkbrc`
	   * Mouse
	   * Game Constroller
	   * Touchpad
   * Display and Monitor
	   * Compositor
       * Gamma
		   * `.config/kgammarc`
	   * Night Color
   * Audio
   * Power Management
      * Energy Saving
         * `.config/powermanagementprofilesrc`
   * Bluetooth
      * `.config/bluedevilglobalrc`
   * KDE Connect
      * `.config/kdeconnect`
   * Removable Storage
      * `.config/device_automounter_kcmrc`
      * `.config/kded5rc`
      * `.config/kded_device_automounterrc`

## Screen Edges
### Active Screen Corners and Edges
Corners are numbered like this:

```
7 - 8 - 3
6 -   - 2
5 - 4 - 1
```

actions are defined in [ElectricBorders] and animations are in other groups, probably in \[effect-\*] and \[TabBox\]. To Disable them run these [commands](https://github.com/shalva97/kde-configuration-files/blob/574b6410b736827eb3f016b5d34db1a65d4e3a59/setupKDE.fish#L10-L28)

## Window Decorations
Buttons on the title bar can be customized by these [commands](https://github.com/shalva97/kde-configuration-files/blob/e27e4211f7531d316108f50adddcf4e0e84d1fb1/setupKDE.fish#L43-L44)

list of symbol meaning:
  * N - Application Menu
  * S - On all desktops
  * H - Context help
  * L - Shade
  * B - Keep below
  * F - Keep above
  * M - Menu
  * I - Minimize
  * A - Maximize
  * X - Close
  
