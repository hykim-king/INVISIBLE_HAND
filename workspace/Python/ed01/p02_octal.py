'''
숫자형 : 진수
    # 8진수  : 숫자0 + 알파벳 소문자 o :0o
    # 16진수 : 숫자0 + 알파벳 소문자 x :0x
'''


def main():

    num = 0o177

    print("{0}의 자료형은 {1}".format(num, type(num)))


main()