
## kcmshell5
A tool to start single system settings modules

##### examples:
* open settings module:
`kcmshell5 fonts`

* combine multiple settings modules:
`kcmshell5 fonts kcm_networkmanagement`

* list of possible arguments
`kcmshell5 --list`

## plasmawindowed
launch kde stuff in windowed mode.

Note: do not include slash at the end of directory

##### examples:

* opens notes:
`plasmawindowed org.kde.plasma.notes`

* opens same window that shows up when clicking network tray icon:
`plasmawindowed org.kde.plasma.networkmanagement`

* open a dedicated search application built on top of Baloo:
`plasmawindowed org.kde.milou`

list of other `plasmawindowed` applications:
`ls /usr/share/plasma/plasmoids`
