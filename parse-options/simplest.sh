#!/bin/bash

# this script doesn't work with arguments passed in for options

while test $# -gt 0
do
  case $1 in
    -s | --source)
      echo "$1 with argument 
      ;;
    -t | --target)
      echo "$1 with argument 
      ;;
    -h | --help)
      echo "$1 with argument 
      ;;
  # Special cases
    --)
      shift
      break
      ;;
    --*)
      echo "error unknown (long) option $1"
      ;;
    -?)
      echo "error unknown (short) option $1"
      ;;
    *)
      break
      ;;
  esac

  echo "$1"

  shift
done
