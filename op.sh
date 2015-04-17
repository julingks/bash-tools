#!/usr/bin/env bash

# 문자열 대치

# 문자열을 교체하기 위해서는 / 를 사용한다.
foo="I'm a cat."
echo ${foo/cat/dog}   # foo의 cat을 dog로 교체하라!  "I'm a dog."가 출력됨

# 문자열의 모든 인스턴스를 교채하기 위해서는 // 더블 대시가 필요하다.
foo="I'm a cat, and she's cat."
echo ${foo/cat/dog}  # "I'm a dog, and she's a cat." 출력
echo ${foo//cat/dog}  # "I'm a dog, and she's a dog." 출력

# 연산은 일반적으로 변수를 수정하지 않는다.
foo="hello"
echo ${foo/hello/goodbye}  # "goodbye" 출력
echo $foo                  # "hello" 출력


