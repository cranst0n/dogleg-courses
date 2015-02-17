#!/bin/bash

if [ $# -eq 0 ]; then
  DIR="."
  ZIP_NAME="dogleg-courses-all.zip"
else
  DIR=$1
  ZIP_NAME="dogleg-courses-$DIR.zip"
fi

echo $DIR

find $DIR -iname '*.json' -print0 | xargs -0 zip $ZIP_NAME
