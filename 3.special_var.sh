#!/usr/bin/env bash

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


