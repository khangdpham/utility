#!/bin/bash

# Check if a variable contains digits only
[[ "10202a03" =~ ^-?[0-9]+$ ]] && echo "True"

# Filter out error that is not important
 2>>>(grep -v "some error message I don't care about")

#show ascii 7bit table
man 7 ascii
