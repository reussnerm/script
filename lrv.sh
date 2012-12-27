#!/usr/bin/env bash

#make a list of file in a directory sorted by reverse access date
find "$1" -type f -exec stat -c "%X:%n" "{}" \;|sort -n|cut -d ":" -f2-|grep -iv "\.jpg"|grep -iv "\.jpeg"
