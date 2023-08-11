import numpy as np
import matplotlib.pyplot as plt
from sklearn.preprocessing import MinMaxScaler
from sklearn.model_selection import train_test_split
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
import cx_Oracle
from datetime import datetime
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

x_data = np.array([row[3:9] for row in data])
modified_data = []
for row in data:
    modified_row = list(row)
    modified_row[0] = format_datetime(modified_row[0])
    modified_data.append(modified_row)

y_data = np.array([row[0] for row in modified_data])
y_data = y_data.astype(np.int32)
# Min-Max 정규화

scaler = MinMaxScaler()
x_data_normalized = scaler.fit_transform(x_data)

# 훈련 데이터와 테스트 데이터 분리 (8:2 비율)

def split_data(x_data, y_data, train_ratio):
    total_samples = len(x_data)
    train_samples = int(total_samples * train_ratio)
    x_train = x_data[:train_samples]
    y_train = y_data[:train_samples]
    x_test = x_data[train_samples:]
    y_test = y_data[train_samples:]
    return x_train, x_test, y_train, y_test

x_train, x_test, y_train, y_test = split_data(x_data, y_data, 0.88)

# 데이터 확인
print("훈련 데이터 X:\n", x_train)
print("훈련 데이터 Y:\n", y_train)
print("테스트 데이터 X:\n", x_test)
print("테스트 데이터 Y:\n", y_test)

# 모델 생성
model = Sequential()
model.add(Dense(32, activation='relu', input_dim=x_train.shape[1]))
model.add(Dense(16, activation='relu'))
model.add(Dense(1, activation='linear'))
model.summary() #input정보 없음

# 모델 컴파일
model.compile(optimizer='adam', loss='mean_squared_error')

# 모델 훈련
model.fit(x_train, y_train, epochs=20, batch_size=4, verbose=1)

# 테스트 데이터로 예측
y_pred = model.predict(x_test)

# 예측 결과 출력
print("테스트 데이터 예측 결과:\n", y_pred)
print("테스트 데이터 예측 결과:\n", y_pred)

