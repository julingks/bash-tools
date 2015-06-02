#!/usr/bin/env bash

# /var/log에 있는 messages, wtmp 로그 파일을 청소하는 스크립트.

cd /var/log
cat /dev/null > messages
cat /dev/null > wtmp

