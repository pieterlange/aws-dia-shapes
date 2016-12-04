#!/bin/bash

URL="https://media.amazonwebservices.com/AWS-Design/Arch-Center/16.2.22_Update/AWS_Simple_Icons_EPS-SVG_v16.2.22.zip"

echo "JUST DO IT!! (waiting for enter keystroke)"
read

wget -O icons.zip $URL
unzip icons.zip

mkdir svg

find -name '*.svg' -exec cp {} svg/ \;
find -name '* *' -print0 | xargs -0 rm

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
