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

gen_pkginfos ~/yiffOS/packages
cd /srv/yiffos/core/x86_64/knot
~/yiffOS/repo-db-generator/repo-db-generator ~/yiffOS/packages

gen_pkginfos ~/yiffOS/my-misc-packages
cd /srv/yiffos/extra/x86_64/knot
~/yiffOS/repo-db-generator/repo-db-generator ~/yiffOS/my-misc-packages

cd $oldpwd

