
# 이줄은 주석입니다.

echo "뒤에 주석이 나옵니다~" # 주석은 여기에

# ; 는 두개 이상의 명령어를 한줄에 쓸수 있게 해줍니다
echo hello; echo there

# ;; 는 case문의 종료자입니다.

case "$variable" in
abc) echo "$variable = abc" ;;
xyz) echo "$variable = xyz" ;;
esac

# .은 옵션 명령어 와 동일합니다.

source .hidden-file
. .hidden-file

# " 부분 쿼우팅 문자열에 들어 있는 거의 대부분의 특수 문자를 해석하지 못하도록 막아줍니다.

# ' 완전 쿼우팅 모든 특수문자를 해석하지 못하도록 합니다.


# , 콤마 연산자, 연속적인 산술연산을 할때 씁니다. 모든 계산이 이루어진뒷, 마지막에 계산된 결과만 리턴됩니다.
let "t2 = ((a=9, 15/3))" #"a"를 세트하고 "t2"를 계산
