#!/bin/bash
# list files and folders
files=$(find /tmp -name "drive*" -type f -mtime +0 -mtime -1)

# Ask the user choice
read -p "Do you want to delete ? (1 = yes, 2 = no) " choice

# Take action according to user's choice
if [ "$choice" -eq "1" ]; then
  # remove files and folders
  rm -rf $files
else
  exit
fi