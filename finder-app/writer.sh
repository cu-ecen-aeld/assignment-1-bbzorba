#!/bin/bash

if [ $# = 0 ] ; then
  echo "ERROR: no argument was given, please enter the file and string!"
  exit 1
fi

if [ $# = 1 ] ; then
  echo "ERROR: only 1 argument given!"
  exit 1
fi

writefile=$1
writestr=$2
directory_to_write=$(dirname ${writefile})

mkdir -p ${directory_to_write}
touch ${writefile}

if [ $? != 0 ] ; then
  echo "ERROR: '${writefile}' cannot be created or modified!"
  exit 1
fi

echo "${writestr}" > ${writefile}
