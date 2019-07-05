#!/bin/bash

file=$1
if [ -d "$file" ]; then
   ls -l "$file" | awk '$1~/^-..x/{print $9}'
else
    echo "${file}:ディレクトリではありません"
fi

# for filr in $(find "$1" -maxdepth 1 -type f) 
# do
#     if [ -x "$file" ]; then

#         echo $(basename "$file")  
