#!/bin/bash

if [ $# -ne 1 ]; then
    echo "사용법 : `basename $0` [절대 경로]"
    exit 1
fi

ABSOLUTE_PATH=$1

cd $ABSOLUTE_PATH
if [ `pwd` != "$ABSOLUTE_PATH" ]
then
    echo "${ABSOLUTE_PATH}로 이동할 수 없습니다"
    exit 66
fi

ls
