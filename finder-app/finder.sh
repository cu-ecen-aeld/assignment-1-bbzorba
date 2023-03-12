#!/bin/bash

if [ $# = 0 ] ; then
  echo "ERROR: no argument was given, please enter the file directory and search string!"
  exit 1
fi

if [ $# = 1 ] ; then
  echo "ERROR: only 1 argument given!"
  exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d ${filesdir} ] ; then
  echo "ERROR: There is no such directory: '${filesdir}' !"
  exit 1
fi

no_of_files=$(find ${filesdir} -type f | wc -l)
no_of_lines=$(grep -r  "${searchstr}" ${filesdir} | wc -l)

echo "The number of files are ${no_of_files} and the number of matching lines are ${no_of_lines}"