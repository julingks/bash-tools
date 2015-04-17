#!/usr/bin/env bash

# 괄호 없이도 배열을 만들 수 있다.
foo=("a a a" "b b b " "c c c")
echo ${foo[2]}  # print "c c c"
echo $foo       # print "a a a"

# 배열의 모든 값에 접근하기 위해서 @ 또는 * 을 사용한다.

array=(a b c)
echo $array      # print a
echo ${array[@]} # print a b c
echo ${array[*]} # print a b c

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


# 특별한 변수

echo $0   # 스크립트 이름 출력
echo $1   # 첫번째 argument 출력
echo $2   # 두번째 argument 출력
echo $9   # 아홉째 argument 출력
echo $10   # 첫번째 arguemnt와 0번째 argument 출력됨. 조심!
echo ${10} # 열번째 argument 출력

# 변수$? 는 이전 실행된 프로세스의 종료 상태를 가진다.

# 이전 프로세스가 성공시
echo $?  # 0을 출력

# 이전 프로세스가 실패시
echo $? # 1을 출력


# 변수$$는 현재 쉘의 프로세스 ID 이다.
echo "current process id : $$"

# 변수$! 가장 최근에 백그라운드 프로세스의 프로세스ID
sleep 1&
echo "background process id : $!"


