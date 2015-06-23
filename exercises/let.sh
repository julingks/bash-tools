#!/bin/sh

# let 명령어는 변수에 대해서 산술 연산을 수행하빈다.

let a=1   # a=11과 같음
let a=a+5 # let "a = a + 5"와 같음

echo "11 + 5 = $a"

let "a <<= 3"   # let "a = a << 3"과 똑같습니다.
# $a (=16) 을 3번 왼쪽 시프트
echo $a

let "a /= 4"  # let "a = a / 4" 와 똑 같습니다.
echo $a

let "a -= 5" # let "a = a - 5"와 같습니다.
echo $a

let "a *= 10"  # let " a = a * 10"

let "a %= 8"  # let "a = a % 8" 나머지 계산

exit 0


