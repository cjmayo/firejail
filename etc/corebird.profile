# Firejail profile for corebird
# Description: Native Gtk+ Twitter client for the Linux desktop
# This file is overwritten after every install/update
# Persistent local customizations
include corebird.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/corebird

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

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
shell none

private-bin corebird
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
