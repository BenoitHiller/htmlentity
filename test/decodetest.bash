#!/bin/bash

fail() {
  echo test failed >&2
  caller 0 >&2
}

testDecode() {
  diff <( awk -F "\r" '{ printf("%s\n", $2) }' htmlentity.lst ) <(decodehtml.bash < <( awk -F "\r" '{ printf("%s\n", $1) }' htmlentity.lst ) ) || fail
}

testCombining() {
  diff <( echo -e "A\xe2\x83\x9c") <(decodehtml.bash <<< "A&DotDot;") || fail
}

testDecode
testCombining
echo "test passed"
