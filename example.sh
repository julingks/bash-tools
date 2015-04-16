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





