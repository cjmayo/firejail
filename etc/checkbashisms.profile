# Firejail profile for checkbashisms
# Description: Lint tool for shell scripts
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include checkbashisms.local
# Persistent global definitions
include globals.local

noblacklist ${DOCUMENTS}

# Allow perl (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/cpan*
noblacklist ${PATH}/core_perl
noblacklist ${PATH}/perl
noblacklist /usr/lib/perl*
noblacklist /usr/share/perl*

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
ipc-namespace
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none

private-dev
private-tmp

memory-deny-write-execute
noexec ${HOME}
noexec /tmp
