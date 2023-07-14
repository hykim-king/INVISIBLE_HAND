'''
bool (불) 자료형 : 참/거짓 나타내는 자료형
'''


def main():
    x = True
    y = False

    print("{} {} {} {}".format(x,type(x), y, type(y)))
    #True <class 'bool'> False <class 'bool'>


    print(5 > 10) # False
    print(5 < 10) # True

    #not 연산자 : True -> False, False -> True

    print(not True)  # False
    print(not False) # True
main()
