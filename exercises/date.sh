#!/bin/sh

echo "올해가 시작 뒤로 지금까지 `date +%j` 일이 지났습니다."

# 날짜를 형식화 하려면 포메터 앞에 '+'를 써야 합니다.
# %j 는 오늘이 연중 몇 번째 날인가를 알려줍니다.

echo "1970/01/01 이후로 지금까지 `date +%s` 초가 지났습니다."
# %s 는 "UNIX epoch이 시작한 뒤로 현재까지 몇 초가 지났는지를 알려줍니다.


prefix=temp
suffix=`eval date +%s` # `date`의 "+%s" 옵션은 GNU 전용 옵션입니다.
filename=$prefix.$suffix
echo $filename

# "유일한" 임시 파일 이름으로 $$를 쓰는 것 보다 더 훌륭합니다.

echo "KST로 현재 시각을 출력" 
zdump KST

exit 0
