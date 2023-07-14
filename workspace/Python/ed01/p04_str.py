'''
문자열
https://docs.python.org/ko/3/library/functions.html
'''


def main():
    print('풍선')     # 풍선
    print("나비")     # 나비
    print("나비"*5)   # 나비*5
    print("10",'10') # 10 10
    print("""나비""") # 나비
    print('''벌레''') # 벌레

    print("I don' want to go to school ") # 문자열에 있는 작은 따옴표 출력
    #print('I don' want to go to school ') 이렇게 쓰면 문법 오류

    #이스케이프 코드: \'
    print('I don\' want to go to school')

    #여러 줄인 문자열을 변수에 대입하고 싶을 때
    # 이스케이프 코드: \n
    #ctrl + / : comment로 바꿈
    # Life is too short
    # You need Python

    multiline = "Life is too short\nYou need Python"
    print(multiline)

    #''' '''
    multiline2 = '''
    Life is too short
    You need Python
    '''
    print(multiline2)

main()
