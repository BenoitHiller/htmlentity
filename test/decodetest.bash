#!/bin/bash

fail() {
  echo test failed >&2
  caller 0 >&2
}

testDecode() {
  diff <( awk -F "\r" '{ printf("%s\n", $2) }' htmlentity.lst ) <(decodehtml.bash < <( awk -F "\r" '{ printf("%s\n", $1) }' htmlentity.lst ) ) || fail
}

testDecode
echo "test passed"
