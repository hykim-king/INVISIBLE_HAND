'''
https://docs.python.org/ko/3/reference/
'''
from random import * # random 모듈에 있는 모든 기능을 사용 하겠다.

def main():
    print(random()) # 0<=x<1
    print(random())
    print(random())

    print("-"*50)

    print(random() * 10)
    print(int(random() * 10))
    print(int(random() * 10)+1)

    print("-"*50)
    print(int(random() * 45) + 1)#0<=x<46 ,15

    print("-"*50)
    print(randrange(1,46)) # 1<=x<46 난수 생성
    print(randint(1,45))   # 1<=x<=45 난수 생성



main()
