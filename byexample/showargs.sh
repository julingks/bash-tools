#!/bin/bash

echo "\$*는 모든 argument를 하나의 문자열로 조합한다."
echo "\$@는 각각의 argument를 다시 quotes한다."

set -v
echo $*
echo $@

echo "$*"
echo "$@"

bash print12.sh "$*"
bash print12.sh "$@"
