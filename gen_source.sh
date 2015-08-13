#!/bin/bash

# = %%FILE%%
#
# Author::    %%USER%%
# Copyright:: %%USER%%
# License::   GPL
#

# == Version
#
# * %%DATE%% 1.00 (%%USER%%) 
#

# == Summary
# 
# This file is for
#

# == Interface
#
# * input
# **
# * output
# **
#

# == Example
#

# == Description
#
# This file is for
#


function usage { 
  echo "usage : $( basename $0 ) <name> [filetype]"
  echo "ex ) $( basename $0 ) HOGE rb"
  echo "ex ) $( basename $0 ) HOGE.rb"
  echo
  echo "[filetype]"
  for file in $( ls ${BIN_DIR}/template.* )
  do
    echo -n $( file_type $file ) ""
  done
  echo
  exit
}


# while getopts "abd:h" options
# do
#   case $options
#     a | b )
#     d     ) OPTDATA=${OPTARG} ;;
#     h | * ) usage ;;
#   esac
# done
# shift $( ( $OPTIND - 1  ) )
#

function file_type {
  echo $( echo $1 | perl -ne 'if( m/[^.]+\.(.+)$/ ) { print $1 ; } else { print "" ; }' )
}

if [ -L $0 ]; then
  BIN_DIR=$( dirname $( readlink $0 ) )
else
  BIN_DIR=$( dirname $0 )
fi

if [ $# -ne 2 -a $# -ne 1 ]; then
  usage
fi

FILE_NAME=$1

if [ $# -eq 2 ]; then
  FILE_TYPE=$2
  NAME=$( basename $FILE_NAME .$( file_type $FILE_NAME ) )
else
  FILE_TYPE=$( file_type $FILE_NAME )
  NAME=$( basename $FILE_NAME .${FILE_TYPE} )
fi

flag=0
for file in $( ls ${BIN_DIR}/template.* )
do
  if [ "$FILE_TYPE" = "$( file_type $file )" ]; then
    flag=1
  fi
done

if [ $flag -eq 0 ]; then
  usage
fi


TEMPLATE_FILE=${BIN_DIR}/template.${FILE_TYPE}

if [ -e $FILE_NAME ]; then
  echo "info : $FILE_NAME is already exist."
  echo -n "remove $FILE_NAME ? (y/n) [n] "
  read ANS
  ANS=${ANS:-'n'}
  if [ $ANS = 'y' -o $ANS = 'Y' ]; then
    rm -f $FILE_NAME
  else
    echo "$FILE_NAME not generated."
    exit
  fi
fi

perl -pe "s/%%USER%%/${USER}/g" $TEMPLATE_FILE | \
perl -pe "s/%%DATE%%/$( date +%Y-%m-%d )/g"    | \
perl -pe "s/%%FILE%%/$( basename $FILE_NAME )/g" | \
perl -pe "s/%%NAME%%/${NAME}/g" > $FILE_NAME

echo $FILE_NAME was generated.

if [ $( head -1 $FILE_NAME | perl -ne "if( /^#\!/m ) { print 1 ; } else { print 0 ; }" ) -eq 0 ]; then
  exit
fi

chmod 744 $FILE_NAME

echo $FILE_NAME was set as 744

