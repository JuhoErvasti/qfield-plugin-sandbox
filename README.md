# QField Plugin Sandbox

This is a repository for testing and playing around QField plugin development.
It contains a very simple structure for a development environment on Linux.

The development environment is for Project Plugins as it is easier to set up
a quick workflow for them.

## How to use

[Download QField](https://github.com/opengisch/QField/releases/) as an AppImage and make sure plugins are supported in the version.

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

## See also

[Based on.](https://github.com/opengisch/qfield-template-plugin)
