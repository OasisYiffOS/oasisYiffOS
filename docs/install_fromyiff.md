# Installing oasisYiffOS from an existing yiffOS installation

To do this you need to make some changes to bulge config files.

## /etc/bulge/mirrors
Add in front of repo.yiffos.gay mirror:
```
https://yiffos.owenofarrell.com/$repo/$arch/$toolchain
```

## Finishing touches
Run:
```
$ bulge s
$ bulge u
```
Happy improved yiffOS!

