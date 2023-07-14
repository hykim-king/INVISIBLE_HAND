'''
형변환
'''


def main():
    x =3;
    print(x, type(x))           # 3 <class 'int'>

    x='3'
    print(x, type(x))          # 3 <class 'str'>
    print(x, type(int(x)))     # 3 <class 'int'>


    x= 3.5
    print(int(x),type(int(x))) # 3 <class 'int'>
    #실수를 정수로 형변환 시키면 소수점 아래가 사라지고 출력됨

    x="a"
    #print(int(x))  # casting 할 수 없음

    #floot
    x="3.5"
    print(float(x)) # 3.5
    print(float(3)) # 3.0



main()
