#!/bin/sh

echo 

a=879
echo "\"a\"의 값은 $a 입니다."

let a=16+5
echo "\"a\"의 값은 $a 입니다."

arch=$(uname -m)

echo $arch
