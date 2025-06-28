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
echo "UpdateRepoDb"
echo "WARNING: This script requires some modification to fit your mirror."

rdg=$oldpwd/repo-db-generator/target/release/repo-db-generator

gen_pkginfos packages
cd /srv/yiffos/core/x86_64/knot
$rdg $oldpwd/packages

cd $oldpwd

gen_pkginfos oasis-packages
cd /srv/yiffos/extra/x86_64/knot
$rdg $oldpwd/oasis-packages

cd $oldpwd

