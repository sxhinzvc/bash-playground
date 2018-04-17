#!/bin/bash

while getopts 's:t:h-:' param; do
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
    -)
      case ${OPTARG} in
        source)
          value="${!OPTIND}"; OPTIND=$(( $OPTIND + 1 ))
          echo "--source ${OPTARG} with ${value}"
          ;;
        target)
          value="${!OPTIND}"; OPTIND=$(( $OPTIND + 1 ))
          echo "--target ${OPTARG} with ${value}"
          ;;
        help)
          echo "--help ${OPTARG}"
          ;;
        *)
          echo "ruhroh"
          ;;
      esac
      ;;
  esac
done
