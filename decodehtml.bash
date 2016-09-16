#!/bin/bash

if [[ ${BASH_SOURCE[0]} == $0 ]]; then
  declare -r depDir="$(cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" && pwd )"
  gawk -f "$depDir/decodehtml.awk" -v entityFile="$depDir/htmlentity.lst"
fi
