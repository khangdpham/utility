#!/bin/bash

# Check if a variable contains digits only
[[ "10202a03" =~ ^-?[0-9]+$ ]] && echo "True"

# Filter out error that is not important
 2>>>(grep -v "some error message I don't care about")

#show ascii 7bit table
man 7 ascii
#make an alias for extract compressed file
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      rar x $1        ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Tokenize string


$ string="john is 17 years old"
$ tokens=( $string )
$ echo ${tokens[*]}

