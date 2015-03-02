#!/bin/bash 
export FILENAME="$1"
export KEYWORD="$2"

find . -type f -name "${FILENAME}" -exec sh -c 'readlink -f "$0" ;cat "$0" | grep -n "${KEYWORD}"; echo "--------------"' {} \;

