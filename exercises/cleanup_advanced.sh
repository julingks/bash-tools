#!/bin/bash

LOG_DIR=/var/loga
ROOT_UID=0  # $UID가 0 인 유저만이 루트 권한을 갖음
LINES=40    # 기본적으로 저장할 줄 수.
E_XCD=66    # 디렉토리를 바꿀 수 없음.
E_NOTROOT=67 # 루트가 아닐 경우 종료 에러

if [ "$UID" -ne "$ROOT_UID" ]
then 
    echo "이 스크립트는 루트로 실행시켜야 됩니다."
    exit $E_NOTROOT
fi

if [ -n "$1" ]
# 명령어줄 인자가 존재하는 테스트 (non-empty).
then
    lines=$1
else
    lines=$LINES # 명령어 줄에서 주어지지 않았다면 디폴트 값을 쓴다.
fi

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]
then
    echo "$LOG_DIR 로 옮겨갈 수 없습니다"
    exit $E_XCD
fi

