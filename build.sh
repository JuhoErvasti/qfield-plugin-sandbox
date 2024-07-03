#!/bin/bash

set -e

source .env

if [ ! -d "$BUILD_DIR" ]; then
  mkdir $BUILD_DIR
fi

for file in "$SOURCE_DIR"/*; do
  file_basename=${file#$SOURCE_DIR/}
  new_file_location="$BUILD_DIR/$file_basename"

  if [[ $file == *.qml ]]; then
    new_file_location="$BUILD_DIR/$PROJECT_NAME.qml"
  fi
  yes | cp $file $new_file_location
done

$QFIELD "$BUILD_DIR/$PROJECT_NAME.qgs"
