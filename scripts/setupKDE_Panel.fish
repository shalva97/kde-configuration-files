#!/usr/bin/fish

# credit goes to Zren https://gist.github.com/Zren/764f17c26be4ea0e088f4a6a1871f528 give him a star!!

set script plasmasetconfig.py

if test ! -e $script
    echo downloading script
    curl "https://gist.githubusercontent.com/Zren/764f17c26be4ea0e088f4a6a1871f528/raw/fb61ba26bfc44b7ba83bd7450f218504b65858ca/plasmasetconfig.py" > $script
    chmod +x $script
end

# disable burp sound when changing volume
./plasmasetconfig.py org.kde.plasma.volume General volumeFeedback false
# clock
./plasmasetconfig.py org.kde.plasma.digitalclock Appearance showDate false

# task manager stuff
./plasmasetconfig.py org.kde.plasma.taskmanager General groupedTaskVisualization 3 # show list of windows when clicking groups
./plasmasetconfig.py org.kde.plasma.taskmanager General middleClickAction Close
./plasmasetconfig.py org.kde.plasma.taskmanager General separateLaunchers false
./plasmasetconfig.py org.kde.plasma.taskmanager General wheelEnabled false

