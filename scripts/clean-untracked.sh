#!/bin/sh
git clean -n  -df -X
#./src/vendor  ./src/app
echo "but remove only :) "
git clean -dfX ./src/generated ./src/var ./src/pub/static

