#!/bin/bash

E_WRONGARGS=65

case "$1" in
    "" ) lines=50;;
    *[!0-9]* ) echo "사용법: `basename $0` 라인수"; exit $E_WRONGARGS;;
    * ) lines=$1;;
esac

