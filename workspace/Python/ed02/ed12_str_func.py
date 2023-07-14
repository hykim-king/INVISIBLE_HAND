'''
https://docs.python.org/ko/3/reference/
'''


def main():
    python = 'Python is Amazing'

    print(python.lower()) #전체를 소문자로 : python is amazing
    print(python.upper()) # 전체를 대문자로 :PYTHON IS AMAZING
    print(python[1:3].islower()) #인덱스 1:2까지 소문자인 지 확인:True
    #Python을 Java로 변환
    print(python.replace("Python","Java")) #Java is Amazing



main()
