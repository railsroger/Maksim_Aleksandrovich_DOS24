#!bin/bash

string=$1
first=$2
second=$3

length_sub=$second-$first
substring=${string:first:length_sub}

echo "The final phrase turned out to be: $substring"