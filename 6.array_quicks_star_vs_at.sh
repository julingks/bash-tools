#!/usr/bin/env bash

# 두가지 추가적인 특별 변수가 있다. $*와 $@ 이다.
# 둘 다 현재 스크립트/프로시져로 넘겨받은 arguments를 포함하는 것 처럼 보인다.

# ""로 묶였을때 그러나 둘은 미묘하게 다르게 행동한다 


# print12.sh를 만든다.    첫번째 파라미터와 두번째를 출력한다.
echo "first : $1"
echo "second: $2"

# showargs.sh 를 만든다.

echo $*
echo $@

echo "$*"
echo "$@"

bash print12 "$*"
bash print12 "$@"

# showargs.sh를 실행한다.

# $ bash showargs 0  " 1    2  3"
# 다음이 출력된다.
#
# 0 1 2 3
# 0 1 2 3
# 0  1    2  3
# 0  1    2  3
# first:  0  1    2  3
# second: 
# first:  0
# second:  1    2  3

# "$*"는 모든 argument를 하나의 문자열로 조합한다.
# "$@"는 각각의 argument를 다시 quotes한다.


# 이 둘은 또 다른 미묘한 차이가 있다.

# IFS(internal field separator)가 설정되어 있으면, 이 변수의 내용은 "$*"의 요소들은 잘라진다.




