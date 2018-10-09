# Firejail profile for mediathekview
# Description: View streams from German public television stations
# This file is overwritten after every install/update
# Persistent local customizations
include mediathekview.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/mpv
noblacklist ${HOME}/.config/smplayer
noblacklist ${HOME}/.config/totem
noblacklist ${HOME}/.config/vlc
noblacklist ${HOME}/.config/xplayer
noblacklist ${HOME}/.java
noblacklist ${HOME}/.local/share/totem
noblacklist ${HOME}/.local/share/xplayer
noblacklist ${HOME}/.mediathek3
noblacklist ${HOME}/.mplayer

# Allow access to java
noblacklist ${PATH}/java
noblacklist /usr/lib/java
noblacklist /etc/java
noblacklist /usr/share/java

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
novideo
protocol unix,inet,inet6
seccomp
tracelog

private-dev
private-tmp

noexec ${HOME}
noexec /tmp
