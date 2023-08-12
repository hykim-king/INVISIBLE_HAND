import numpy as np
from tensorflow.keras.models import load_model

# 저장된 모델 로드
loaded_model = load_model("rnn_model.h5")

# 예측에 사용할 데이터 준비
new_data = np.array([[70.4, 65.8, 99.1, 103.7, 81.4, 90.2]])
# 각각의 value1 ~ value6에 실제 값들을 넣어주세요.

# 예측 수행
predictions = loaded_model.predict(new_data)

print("예측 결과:", predictions[0][0])