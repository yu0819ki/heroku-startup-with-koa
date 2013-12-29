#!/bin/bash

usage_exit() {
        echo "Usage: $0 <repository> <refspeck>" 1>&2
        exit 1
}

if [ $# != 2 ]; then
  usage_exit
fi

BASE_DIR=`dirname $0`

ALTPUSH_MARKER=`git log --pretty=format:"%H" -1`
mv $BASE_DIR/0.10.x/package.json $BASE_DIR/package.json
git add $BASE_DIR/package.json
git commit -m "overwrite package"

git push -f $1 $2

git reset --hard $ALTPUSH_MARKER
