'''
https://docs.python.org/ko/3/reference/
'''

from random import randint

def main():
    date = randint(4,28)
    #오프라인 스터디 모임 날짜는 매월 18일로 선정됐습니다.
    print('오프라인 스터디 모임 날짜는 매월 {}일로 선정됐습니다.'.format(date))


main()
