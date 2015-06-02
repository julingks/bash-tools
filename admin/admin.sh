#!/bin/sh


echo "id 명령어는 현재 사용자의 ID와 유효사용자 ID, 그룹 ID를 보여줍니다"
id



echo "\$UID : $UID"
echo "\$EUID : $EUID"
echo "\$GROUPS : $GROUPS"

echo "sudo를 사용하게 되면 위에 값이 모두 0이 됩니다" 

echo "who 는 시스템에 현재 로그인해 있는 모든 사용자를 보여줍니다."
who 

echo "who -m 은 오직 현재 사용자에 대한 정보만 보여줍니다."
who -m


echo "whoami는 현재 사용자의 이름을 보여줍니다"
whoami

echo "logname 은 현재 사용자의 이름을 /var/run/utmp"에서 찾아서 보여줍니다.
echo "whoami랑 비슷하지만 su 를 사용해서 유저를 변경해도 원래 유저이름을 보여줍니다."
logname

echo "users는 로그인하고 있는 모든 사용자를 보여줍니다. who -q 와 비슷합니다"
users

echo "tty는 현재 사용자의 터미널 이름을 보여줍니다."
tty
