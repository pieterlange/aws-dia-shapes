#!/bin/bash

export WGET_CMD=`which wget`
export UNZIP_CMD=`which unzip`
URL="https://d1.awsstatic.com/webteam/architecture-icons/q2-2021/Asset-Package_04302021.7efed5c84a17020a6ddd81ef1f42e86ccd33a531.zip"

echo "JUST DO IT!! (waiting for enter keystroke)"
read


$WGET_CMD -O icons.zip $URL
ret_code=$?
if [[ $ret_code -eq 127 ]]; then
    echo "wget is not installed"
    exit 1; 
elif [[ $ret_code -eq 4 ]]; then
    echo "location unavailable"
    exit 1;
fi
$UNZIP_CMD -q icons.zip

mkdir svg
find -name '*.svg' -exec cp {} svg/ \;
find -name '* *' -print0 | xargs -0 rm
find svg -name '\.*' -exec rm -v {} \;
for svgfile in `ls svg/* | grep '&'`; do mv -v $svgfile svg/`basename $svgfile | sed -e s/\&/and/g` ; done

echo "Break here (ctrl-c) to do it manually or press enter to JUST DO IT!"
read

make

echo "All done"
echo "Copy .output/shapes.sheet to ~/.dia/sheets/"
echo "Copy .output/shapes/* to ~/.dia/shapes/"
echo
echo "Yesterday you said tomorrow..."
echo "Break here (ctrl-c) to do it manually or press enter to JUST DO IT!"
read

cp -v .outputs/shapes.sheet ~/.dia/sheets/AWS.sheet
cp -v .outputs/shapes/* ~/.dia/shapes/
