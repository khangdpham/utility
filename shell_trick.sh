#!/bin/bash

# Check if a variable contains digits only
[[ "10202a03" =~ ^-?[0-9]+$ ]] && echo "True"
