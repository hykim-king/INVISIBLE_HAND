import numpy as np
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import SimpleRNN, Dense
from tensorflow.keras.optimizers import Adam
from sklearn.model_selection import train_test_split
import cx_Oracle

def format_datetime(input_datetime):
    try:
        formatted_date = input_datetime.strftime('%Y%m')
        return formatted_date
    except AttributeError:
        return "Invalid input. Please provide a valid datetime object."

dsn = cx_Oracle.makedsn('192.168.0.123', 1521, 'xe')
db = cx_Oracle.connect('INVISIBLEHAND', '4321', dsn)
cursor = db.cursor()

cursor.execute("select * from sbhitable where subcategory = '건설업' order by chartdate")
data = cursor.fetchall()
# 주어진 데이터
x_data = np.array([row[3:9] for row in data])
y_data = np.array([np.mean(row[3:9]) for row in data])

# 데이터 전처리
X_data = np.array(x_data)  # 리스트를 넘파이 배열로 변환
y_data = np.array(y_data)

# 데이터 분할
X_train, X_test, y_train, y_test = train_test_split(X_data, y_data, test_size=0.11, random_state=42)

# RNN 모델 구성
model = Sequential()
model.add(SimpleRNN(units=32, input_shape=(X_data.shape[1], 1), activation='relu', return_sequences=True))
model.add(SimpleRNN(units=16, activation='relu'))
model.add(Dense(units=1))

# 모델 컴파일
model.compile(optimizer=Adam(learning_rate=0.0008), loss='mean_squared_error', metrics=['mae'])

# 모델 요약 출력
model.summary()

# 모델 훈련
model.fit(X_train, y_train, epochs=20, batch_size=4, validation_data=(X_test, y_test))

# 테스트 데이터로 예측
predictions = model.predict(X_test)

# 결과 출력
for i in range(10):
    print(f"실제값: {y_test[i]}, 예측값: {predictions[i][0]}")

model.save("rnn_model.h5")