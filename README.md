### Some useful stuff
  * [hide title bar when windows are maximized](https://github.com/shalva97/kde-configuration-files/blob/b011186249deb8b3c268d5dab9cb0f84739127b8/setupKDE.fish#L4)
  * [Delete all (i hope) config files](https://github.com/shalva97/kde-configuration-files/blob/master/delete-kde-configuration-files.fish)
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
   * Plasma Style
      * `.config/plasmarc`
   * Application Style
      * `.config/kdeglobals`
      * [Window Decorations](#Window-Decorations)
         * `.config/kwinrc`
   * Colors
       * `.config/kdeglobals`
       * `.config/Trolltech.conf`
   * Fonts
      * Fonts
         * `.config/kdeglobals`
         * `.config/kcmfonts`
   * Icons
      * `.config/kdeglobals` [Icons]
   * Cursors
      * `.config/kcminputrc`

#### Workspace
   * Desktop behavior
      * General behavior
         * `.config/plasmarc`
      * [Screen Edges](#screen-edges)
            * `.config/kwinrc`
      * Desktop Effects
         * `.config/kwinrc`
         * `.config/kglobalshortcutsrc`
   * Window Management
      * Window behavior
         * `.config/kwnirc`
      * Window Rules
         * `.config/kwinrulesrc`
   * Shortcuts
      * Custom Shortcuts
         * `.config/khotkeys`
      * Global Shortcuts
         * `.config/kglobalshortcutsrc`
   * Startup and Shutdown
      * Background Services
          * `.config/kded5rc`
       * Desktop Session
          * `.config/ksmserverrc`
   * Search
      * Plasma Search
         * `.config/krunnerrc`
      * File Search
         * `.config/baloofilerc`
#### Personalization
   * Account Details
   * Notifications
      * `.config/plasmanotifyrc`
   * Regional Settings
      * Formats
         * `.config/plasma-localerc`
      * Date & Time
         * `.config/ktimezonedrc`
   * Accessibility
      * `.config/kaccessrc`
   * Applications
      * Default Applications
         * `.config/kdeglobals`
#### Network
   * Connections
      * `/etc/NetworkManager/system-connections`
   * Settings
   * Bluetooth
      * `.config/bluedevilglobalrc`
#### Hardware
   * Input Devices
      * Keyboard
         * Hardware
            * `.config/kcminputrc`
         * layout
            * TODO
         * Advanced
            * `.config/kxkbrc`
   * Display and Monitor
      * Gamma
         * `.config/kgammarc`
   * Multimedia
   * Power Management
      * Energy Saving
         * `.config/powermanagementprofilesrc`
   * KDE Connect
      * `.config/kdeconnect`
   * Removable Storage

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
  
