'''
 사칙 연산자
'''

def main():
    x = 3
    y = 4

    print(x+y)  # 7
    print(x-y)  # -1
    print(x*y)  # 12
    print(x/y)  # 0.75 (자바와 다르게 바로 정수/정수도 실수가 나옴

    print('-'*20) # -------------------- -가 20분 출력됨


    # **는 x의 y 제곱을 나타내는 연산자
    print(x ** y) # 81

    # % : 나머지 연산자
    print(x%y) # 3

    #아래 계산을 위해 다시 선언
    x = 7
    y = 4

    # // : 나눗셈 후 몫을 반환 (정수만 반환 하고 싶을 때 사용하면 좋음)
    print(x//y) # 1 not 1.75 0.75는 반환 x

main()
