'''
print("반려동물을 소개해 주세요.")
print("우리 집 반려동물은 개인데, 이름이 연탄이예요.")
print("연탄이는 4살이고, 산책을 아주 좋아해요.")
print("연탄이는 수컷인가요?")
print("네.")
'''


def main():
    name = "연탄"
    animal = '개'
    age = 4
    is_male = True
    # 숫자와 문자열 연산은 자바와 다르게 casting이 필요함
    print("반려동물을 소개해 주세요.")
    print("우리 집 반려동물은 "+animal+"인데, 이름이 "+name+"이예요.")
    print(name+"이는 "+str(age)+"살이고, 산책을 아주 좋아해요.")
    print(name+"이는 "+str(is_male)+"수컷인가요?")
    print("네.")

    
main()


