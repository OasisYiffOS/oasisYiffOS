# oasisYiffOS

This is the main repo for oasisYiffOS. This is designed to be a new version of yiffOS that can be more actively maintained. Features include:
- Backwards compatibility with previous yiffOS installations
- A lot more software including Hyprland and GIMP
- Publicly available infrastructure toolset
- Support for more than x86_64 in the future
- A bunch of documentation

> Current version: oasisYiffOS 0.0 (knot)
Codenamed 'knot' to ensure compatibility with yiffOS, at least in the early stages. That way we can use their mirrors.

## Installation
- A proper oasisYiffOS installer or installer image is in the works. 
- [From the latest yiffOS installer image (v2)](docs/install_yiff2.md)
- [From an existing yiffOS installation](docs/install_fromyiff.md)

## Infrastructure
The contents of this repo, except for documentation, are submodules linking to the various tools that make up yiffOS (and by extention oasisYiffOS).
- bulge: The core of yiffOS, the package manager.
- sheath: Shell script to make installable bulge packages
- hole: Sheath in a container
- oasis-minimal: Minimal installation of oasisYiffOS
- oasis-bootstrap: Installation of oasisYiffOS that can be used to install a minimal installation
- repo-db-generator: Generates a database for package mirrors
- packages: The main package repository (core)
- oasis-packages: The oasis package repository (oasis)

