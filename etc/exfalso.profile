# Firejail profile for exfalso
# Description: GTK audio tag editor
# This file is overwritten after every install/update
# Persistent local customizations
include exfalso.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.quodlibet
noblacklist ${MUSIC}

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
machine-id
netfilter
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

private-bin exfalso,python*
private-cache
private-dev
private-etc alternatives,fonts,group,passwd
private-lib libatk-1.0.so.*,libgdk-3.so.*,libgdk_pixbuf-2.0.so.*,libgirepository-1.0.so.*,libgstreamer-1.0.so.*,libgtk-3.so.*,libgtksourceview-3.0.so.*,libpango-1.0.so.*,libpython*,libreadline.so.*,libsoup-2.4.so.*,libssl.so.1.*,python2*,python3*
private-tmp

# memory-deny-write-execute - Breaks on Arch
