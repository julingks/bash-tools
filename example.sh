#!/bin/bash

# $1은 첫번째 argument:
echo $1

# Hello, World를 출력
echo Hello, World. 

# foo에 3을 지정
foo=3 

# 공백을 핑해야 한다. 아래는 에러가 난다
foo = 3 

# 공백을 쓰고 싶다면 (( ))로 감싸준다
(( foo = 4 ))

# foot의 값을 stdout으로 출력한다
echo $foo

# unset은 변수를 지운다.
foo=42
echo $foo
unset foo
echo $foo # 아무것도 출력안됨


# 값 할당
foo=1
bar=$foo
echo $bar

# 공백값을 넣고 싶다면 따움표로 묶음
foo="x y z"
echo $foo

# 때로는 {}로 감싸야 한다. 배열이나 변수 명령을 위해서
echo ${foo}   # x y z 출력

# 배열을 선언할 필요는 없다. 모든 변수가 배열이다.

foo[0]="first"
foo[1]="second"

echo ${foo[1]}  # 인덱스 1의 값을 출력 second

foo[0]="one"
foo[1]="two"
echo $foo # 첫번째 인덱스의 값을 출력한다.  one

