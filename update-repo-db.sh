#!/bin/bash

oldpwd=$PWD

gen_pkginfos () {
    for f in $1/*/
    do
        echo "Assert PKGINFO $f"
        local oldpwd=$PWD
        cd $f
        ~/yiffOS/sheath/sheath -p
        cd $oldpwd
    done
}

# TODO un-hardcode the server paths

gen_pkginfos packages
cd /srv/yiffos/core/x86_64/knot
repo-db-generator/repo-db-generator packages

gen_pkginfos oasis-packages
cd /srv/yiffos/extra/x86_64/knot
/repo-db-generator/repo-db-generator oasis-packages

cd $oldpwd

