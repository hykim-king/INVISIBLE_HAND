import numpy as np
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import SimpleRNN, Dense
from tensorflow.keras.optimizers import Adam
from sklearn.model_selection import train_test_split

# 주어진 데이터
X_data = [
    [60.5, 70.5, 77.4, 101.4, 69.8, 77.2],
    [67.2, 76.5, 90.4, 85.7, 92.8, 84.1],
    [40.5, 20.5, 57.1, 99.4, 89.8, 77.2]
]
y_data = [sum(x) for x in X_data]

# 데이터 전처리
X_data = np.array(X_data)  # 리스트를 넘파이 배열로 변환
y_data = np.array(y_data)

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X_data, y_data, test_size=0.2, random_state=42)

# RNN 모델 구성
model = Sequential()
model.add(SimpleRNN(units=32, input_shape=(X_data.shape[1], 1), activation='relu'))
model.add(Dense(units=1))

# 모델 컴파일
model.compile(optimizer=Adam(learning_rate=0.001), loss='mean_squared_error', metrics=['mae'])

# 모델 요약 출력
model.summary()

# 모델 훈련
model.fit(X_train, y_train, epochs=10, batch_size=32, validation_data=(X_test, y_test))

# 테스트 데이터로 예측
predictions = model.predict(X_test)

# 결과 출력
for i in range(10):
    print(f"실제값: {y_test[i]}, 예측값: {predictions[i][0]}")
