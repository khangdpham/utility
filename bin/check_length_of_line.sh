#!/bin/bash
{
re='^[0-9]+$'
MAX_LENGTH=80
if [ $# == 2 ] ;then
	if ! [[ $2 =~ $re ]] ; then
	   echo "error:Invalid max length" >&2; exit 1
	fi
	MAX_LENGTH=$2
fi
export MAX_LENGTH
if [ $# -le 0 ] ;then
   printf "\nFile not found ! \n\n"
   exit 1
fi

while test ${#} -gt 0 ; do
   TARGET=${1%/}
   if [ ! -d $TARGET ] ; then
       printf  "\nChecking file $TARGET for line exceeds ${MAX_LENGTH}\n\n"
       sed 's/^"]//g' $1 | awk -v len=${MAX_LENGTH} '{ if(length >=len) print NR-1 ": " $0 }'
       break
   fi
   for j in $TARGET/* ; do
     #   printf  "\nFile: $j\n"
        if [[ $j =~ \.o$ || $j =~ \.ln$ ]] ; then continue ;fi
        sed 's/^"]//g' $j | awk -v len=${MAX_LENGTH} '{ if(length >=len ) print "'$j:' " NR-1 ": " $0 }'
    done
    shift
done
} 2>/dev/null