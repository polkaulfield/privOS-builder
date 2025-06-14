#!/bin/sh

# Disable KDE autolock
kwriteconfig5 --file kscreenlockerrc --group Daemon --key Autolock false
kwriteconfig5 --file kscreenlockerrc --group Daemon --key LockOnResume false

# Disable power management idle time
kwriteconfig5 --file powermanagementprofilesrc --group AC --key idleTime 0
kwriteconfig5 --file powermanagementprofilesrc --group AC --key lidAction 0
kwriteconfig5 --file powermanagementprofilesrc --group AC --key suspendWhenIdle false
kwriteconfig5 --file powermanagementprofilesrc --group AC --key suspendThenHibernate false

# Reapply power management config
qdbus org.kde.Solid.PowerManagement /org/kde/Solid/PowerManagement reparseConfiguration

# Copy desktop file for installer
cp /etc/calamares/privos-calamares.desktop $HOME/Desktop/privos-calamares.desktop
