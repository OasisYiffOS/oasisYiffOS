# Installing oasisYiffOS from an existing yiffOS installation

To do this you need to make some changes to bulge config files.

## /etc/bulge/config.json
```
{
    "architecture": "x86_64",
    "toolchain": "thrust",
    "colour": true,
    "progressbar": true,
    "repos": [
        {
            "name": "core",
            "active": true
        },
        {
            "name": "oasis",
            "active": true
        }
    ]
}
```

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

