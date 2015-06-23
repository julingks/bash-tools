#!/bin/bash

# shift 명령어는 위치 매개변수를 왼쪽으로 한 단계씩 이동시킨다.

until [ -z "$1" ]
do
    # echo -n 은 이어서 출력
    echo -n "$1 "
    shift
done

echo 

exit 0
