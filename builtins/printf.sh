#!/bin/sh

# printf [포멧] [파라미터1] [파라미터2] ...

PI=3.14159265358979
DecimalConstant=31373

Message1="Hello"
Message2="World"


echo 

printf "Pi를 소수점 이하 2 자리만 표시 = %1.2f" $PI
echo
printf "Pi를 소수점 이하 9 자리만 표시 = %1.9f" $PI

printf "\n"  # echo 와 같음


printf "상수 = \t%d\n" $DecimalConstant

printf "%s %s \n" $Message1 $Message2

echo 



