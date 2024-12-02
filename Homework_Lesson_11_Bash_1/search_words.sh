#!/bin/bash

search_str=$1
directory=$2

if [ ! -d $directory ]
then
  echo "The directory $directory is not exists."
fi

for file in $(find "$directory" -type f); do
  if grep -q "$search_str" "$file"; then
    file_size=$(stat -c%s "$file")
    echo "The searching to file: $file, size: $file_size"
  fi
done