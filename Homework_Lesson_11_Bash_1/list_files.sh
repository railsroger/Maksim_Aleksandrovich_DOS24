#!/bin/bash

read -p "Input file name: " file_name
echo $file_name

read -p "Input catalog name: " catalog_name
echo $catalog_name

read -p "Input file extension: " file_ext
echo $file_ext

search_folder=$(find / -type d -name "$catalog_name" 2> /dev/null)

if [[ ! -d "$search_folder" ]]
  then
    echo "The directory $search_folder is not exists."
  else
    search_file=$(find $search_folder -type f -name "*.$file_ext")
    echo "The files to $search_file exists."
    echo $search_file > $file_name
fi