# Snap Dev Tools

My set of tools to make easier the development of [Snap!](https://github.com/jmoenig/Snap--Build-Your-Own-Blocks)

## Prerequisites

You need Node.js installed on your computer.

## Installation

Copy the `Makefile` and the  `dev` folder inside your Snap! working directory.

## Usage

Run `make install` to install the required Node.js dependencies. This needs to be done only once at start.

    $ make install

Run `make extract` to analyze the Snap morphic files and extract each class in a separate file in the `dev/src` directory.

This make easier to develop each class separately.

    $ make extract

    Extracting morphic_header.js...
    Extracting morphic_global_settings.js...
    Extracting morphic_global_functions.js...
    Extracting Animation.js...
    Extracting Color.js...
    Extracting Point.js...
    Extracting Rectangle.js...
    Extracting Node.js...
    Extracting Morph.js...
    ...
    Extracting WorldMorph.js...

This will create a source code tree like the following:

    dev
    └── src
        ├── blocks
        ├── byob
        ⋮
        ├── morphic
        │   ├── Animation.js
        │   ├── BlinkerMorph.js
        │   ├── BouncerMorph.js
        │   ├── BoxMorph.js
        │   ⋮
        │   ├── WorldMorph.js
        ├── objects
        ⋮

Run `make build` (or just `make`) to assemble the classes back again to the Snap's source code files.

    $ make build

Run `make docs` to make JSDoc to analyze the Snap! source code and generate documentation to the `docs` directory.

    $ make docs

Run `make clean` to clean all the generated files by this tools.

# Uninstallation

Run `make uninstall` or remove manually the `Makefile` and the `dev` folder from the Snap! working directory.

    $ make uninstall
