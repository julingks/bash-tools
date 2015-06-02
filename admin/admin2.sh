#!/bin/sh

echo "uname 은 시스템 사양(OS, 커널 버전등)을 표준출력으로 보여줍니다. -a 옵션을 주면 자세히 나옵니다."
uname -a

echo "arch 는 시스템 아키텍처를 보여줍니다. (i386 등) uname -m과 동일한 명령어 입니다."
arch
uname -m

echo "uptime은 시스템이 얼마나 오랫동안 돌고 있었는지 관련 통계와 함께 보여줍니다."
uptime

echo "nohup은 사용자가 로그 아웃을 하더라도 명령어가 계속 돌게 해줍니다."
echo "nohup은 스크립트에서 쓸데는 고아가 생기지 않도로고 wait와 같이 써야합니다"
nohup ls

echo "wait 는 백그라운드로 실행중인 모든 작업이나 옵션으로 주어진 특정 작업번호나"
echo "프로세스 아이디가 끝날 때까지 스크립트 실행을 중단시킵니다."
sleep 1&
wait
echo "1"

sleep 1&
wait

echo "2"
sleep 1&
wait

echo "3"
echo "done."
