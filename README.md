# QField Test Plugin

This is a repository for a testing and playing around QField plugin development.
It contains a very simple structure for a development environment on Linux.

## How to use

Download QField as an AppImage and make sure plugins are supported in the version.

Copy the .env template:

```bash
cp .env.template .env
```

Fill in the relevant variables:

```
PROJECT_NAME=<name of the plugin>
SOURCE_DIR="src" # doesn't necessarily have to be changed
BUILD_DIR=<location you want to copy the files over> # for example /home/<user>/QField/export/$PROJECT_NAME
QFIELD=<path to the QField AppImage>
```

Code in `src/main.qml`, test your changes with

```bash
./build.sh
```
