#!/usr/bin/env bash
set -v

# 배열 

# 괄호 없이도 배열을 만들 수 있다.
foo=("a a a" "b b b " "c c c")
echo ${foo[2]}  # print "c c c"
echo $foo       # print "a a a"

# 배열의 모든 값에 접근하기 위해서 @ 또는 * 을 사용한다.

array=(a b c)
echo $array      # print a
echo ${array[@]} # print a b c
echo ${array[*]} # print a b c
echo ${#array[@]} # print 3

# 배열을 복사하기 위해서 @를 사용한다. 그리고 quotes(")로 감싸준다.
foo=(a b c)
bar=("${foo[@]}")
echo ${bar[1]}     # prints b

# 그냥 변수로 복사하지 마십시요

foo=(a b c)
bar=$foo
echo ${bar[1]}  # 아무것도 출력 안됨

# quotes(")를 잇지마시요. 공백이 포함된 요소의 배열은 망하게 된다.
foo=("a 1" "b 2" "c 3")
bar=(${foo[@]})
baz=("${foo[@]}")

echo ${bar[1]}   # 읔, 1이 출력됨
echo ${baz[1]}   # "b 2"가 출력됨

