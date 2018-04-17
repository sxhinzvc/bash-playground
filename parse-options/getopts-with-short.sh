#!/bin/bash

while getopts 's:t:h' param; do
  case "${param}" in
    s)
      echo "-s ${OPTARG} was provided"
      ;;
    t)
      echo "-t ${OPTARG} was provided"
      ;;
    h)
      echo "-h was provided"
      ;;
  esac
done
