#!/bin/bash

oldpwd=$PWD

gen_pkginfos () {
    for f in $1/*/
    do
        printf "\r\033[KAssert PKGINFO $f"
        local oldpwd=$PWD
        cd $f
        ~/OasisYiff/sheath/sheath -p
        cd $oldpwd
    done
}

# TODO un-hardcode the server paths
echo "UpdateRepoDb 1.1.0"
echo "WARNING: This script requires some modification to fit your mirror."

rdg=$oldpwd/repo-db-generator/target/release/repo-db-generator

gen_pkginfos packages
cd /opt/yiffOS/core/x86_64/knot
$rdg $oldpwd/packages

cd $oldpwd

gen_pkginfos oasis-packages
cd /opt/yiffOS/extra/x86_64/knot
$rdg $oldpwd/oasis-packages

cd $oldpwd

