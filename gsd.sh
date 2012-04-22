#!/bin/sh
#
# name:      gsd, a simple gui for sdcv
# author:    Xu Xiaodong <xxdlhy@gmail.com>
# license:   GPL
# created:   2009 Dec 23
# modified:  2012 Apr 22
#

input=`yad --title 'gsd' \
  --center \
  --no-buttons \
  --entry`

clip=`xclip -o`

if [ -n "$input" ]
then
  word="$input"
else
  word="$clip"
fi

output=`sdcv -n -u '简明英汉字典' "$word"`

if [ -n "$output" ]
then
  yad --title 'gsd' \
    --center \
    --no-buttons \
    --timeout '5' \
    --text "$output"
fi

exit 0
