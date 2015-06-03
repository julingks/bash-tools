#!/usr/bin/env bash

unset username
echo ${username-default}  # default 출력

echo ${username} # 출력 없음

username=admin
echo ${username-admin} # admin 출력


#  :을 붙이면 값이 비었는지 까지 채크한다.

unset foo
unset bar

echo ${foo-abc}    # abc 출력
echo ${bar:-xyz}   # xyz 출력

foo=""
bar=""

echo ${foo-123} # 출력 없음
echo ${bar:-xyz} # bar는 값이 있으나 empty이므로 xyz 출력된다.

# = (:=) 연산은 - 연산과 비슷하다. 값이 없으면 값이 저장된다는 것만 빼고.

unset cache
echo ${cache:=1024}     # 1024 출력
echo ${cache}           # - 와 달리 값이 저장된다. 1024 출력.

# + 연산은 값이 설정되어 있으면 값을 주고, 설정되어 있지 않으면 아무것도 주지 않는다.

echo "+ operation"

unset foo
unset bar

foo=30

echo ${foo+42}    # 42 출력
echo ${bar+1701}  # bar는 값이 설정되 있지 않아서 아무것도 출력하지 않음.
echo ${foo}       # 30 출력
echo ${bar}       # 출력 없음

# ? 연산은 변수가 설정되지 않으면특정 메시지와 함께 프로그램을 크래시 시킨다.

echo ${l?} # 출력 l: parameter null or not set
