#!bin/bash

if [ -z "$1" ]; then 
echo 'Parameter 1 is not set'
exit
else
    if [ -z "$2" ]; then 
    echo 'Parameter 2 is not set'
    exit
    fi
fi

file=$1
extension=$2
new_ext=${file%.*}

if [ $new_ext == $file ]; then
    echo 'The file has no initial extension'
fi
    mv $file $new_ext.$extension
    echo  "File renamed to $new_ext.$extension"