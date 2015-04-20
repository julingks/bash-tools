#!/usr/bin/env bash

# 변수의 연산

# "/" 연산은 문자열 교체
# 문자열을 교체하기 위해서는 / 를 사용한다.
foo="I'm a cat."
echo ${foo/cat/dog}   # foo의 cat을 dog로 교체하라!  "I'm a dog."가 출력됨

# 문자열의 모든 인스턴스를 교채하기 위해서는 // 더블 대시가 필요하다.
foo="I'm a cat, and she's cat."
echo ${foo/cat/dog}  # "I'm a dog, and she's a cat." 출력
echo ${foo//cat/dog}  # "I'm a dog, and she's a dog." 출력

# "/" 연산은 일반적으로 변수를 수정하지 않는다.
foo="hello"
echo ${foo/hello/goodbye}  # "goodbye" 출력
echo $foo                  # "hello" 출력


# 교체할게 없으면 그냥 삭제합니다.
foo="I like meatballs."
echo ${foo/balls}     # "I link meat." 출력

# 변수에서 #과 %는 패턴과 매칭되는 prefix와 suffix를 지웁니다. 
# ${이름#패턴} 연산은 ${이름}의 패턴과 매칭되는 가장 짧은 prefix를 지웁니다. ##는 가장 긴것을 지웁니다.

minipath="/usr/bin:/bin:/sbin"
echo ${minipath#/usr}     # /bin:/bin:/sbin 
echo ${minipath#*/bin}    # :/bin:/sbin
echo ${minipath##*/bin}   # :/sbin


# %연산은 동일합니다. 다만prefix가 아니라 suffix입니다.

minipath="/usr/bin:/bin:/sbin"
echo ${minipath%/usr*}     # 아무것도 출력 안됨
echo ${minipath%/bin*}     # /usr/bin:
echo ${minipath%%/bin*}    # /usr


