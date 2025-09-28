# Maintaining oasisYiffOS

## Building oasisYiffOS
You can build a package so that it will work with your system by using sheath. If you want to be sure that your package's tarball can be run on other yiffOS systems, you can use hole.
- `sheath -b` builds the package into a tarball.
- `sheath -c` cleans the build environment
Hole is simply a wrapper over sheath, so any option for sheath can be passed to hole.

## Contributing to oasisYiffOS
Look at the PKGSCRIPTs in packages and oasis-packages.
- `sheath -p` will automatically generate a PKGINFO for you.
To update a package, you need to update the version, hash, and sometimes the download link. You should also check if any patches that come with the package are needed anymore.
> If you are fixing something with the package without changing the version number, you must change the epoch so bulge recognizes the update.

## Mirroring oasisYiffOS
TODO, until an oasis solution comes along you could use [repo-sync-script](https://git.yiffos.gay/infrastructure/repo-sync-script) from yiffOS.

## Packages in yiffOS that aren't in oasisYiffOS in group 'base'
i.e. packages that NEED to be added to get the most basic of systems working with no dependency on the yiffOS mirrors.
- pcre2
- krb5
- zlib
- libxcb
- libtirpc
- cyrus-sasl
- lib32-glibc
- file
- mpfr
- libgcc
- corefiles
- procps-ng
- nghttp2
- libpsl
- pcre
- libssh2
- libxdmcp
- libgcrypt
- psmisc
- iproute2
- cpio
- make-ca
- inetutils
- db
- gmp
- libgpg-error
- gawk
- libtasn1
- zstd
- attr
- shadow
- gdbm 
- libunistring
- iana-etc
- xkeyboard-config
- nghttp3
- uwufetch
- bzip2
- expat
- libnsl
- libxslt
- grep
- python
- libxml2
- tar
- e2fsprogs
- less
- findutils
- libxau
- sharutils
- ncurses
- openldap
- brotli
- libpcap
- libevent
- nettle
- nss
- sed
- rpcsvc-proto
- gettext
