import cx_Oracle
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from keras.callbacks import LearningRateScheduler
from sklearn.preprocessing import MinMaxScaler
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import LSTM, Dense
from tensorflow.keras.optimizers import Adam
from sklearn.metrics import mean_squared_error, mean_absolute_error

np.random.seed(42)  # 원하는 시드값으로 변경 가능

dsn = cx_Oracle.makedsn('192.168.0.123', 1521, 'xe')
db = cx_Oracle.connect('INVISIBLEHAND', '4321', dsn)
cursor = db.cursor()


cursor.execute("select sbhi from sbhitable where subcategory = '인쇄 및 기록매체' order by chartdate")
data = cursor.fetchall()
sbhidata = np.array(data).flatten()
# 데이터 스케일링 (0과 1 사이로 정규화)
scaler = MinMaxScaler(feature_range=(0, 1))
sbhidata_scaled = scaler.fit_transform(sbhidata.reshape(-1, 1))

# 데이터셋 생성
look_back = 10  # 과거 10일의 데이터를 입력으로 사용
X, y = [], []
for i in range(len(sbhidata_scaled) - look_back):
    X.append(sbhidata_scaled[i : i + look_back, 0])
    y.append(sbhidata_scaled[i + look_back, 0])
X, y = np.array(X), np.array(y)

# 데이터셋 분할 (학습 데이터와 테스트 데이터)
train_size = int(0.8 * len(X))
X_train, X_test = X[:train_size], X[train_size:]
y_train, y_test = y[:train_size], y[train_size:]


# Learning rate 스케줄링 함수 정의
def lr_schedule(epoch, lr):
    if epoch < 20:
        return 0.025
    elif epoch < 50:
        return 0.01
    else:
        return 0.0025


# LSTM 모델 정의
model = Sequential()
model.add(LSTM(50, input_shape=(look_back, 1), dropout=0.25))
model.add(Dense(1))
# 학습률 스케줄링 콜백 정의
lr_scheduler = LearningRateScheduler(lr_schedule)
# Adam 옵티마이저와 손실 함수 설정
model.compile(optimizer=Adam(), loss="mean_squared_error")
# 모델 학습
# 모델 학습
history = model.fit(X_train, y_train, epochs=300, batch_size=8, verbose=2, callbacks=[lr_scheduler], validation_data=(X_test, y_test))

# 손실 값 추출
train_loss = history.history['loss']
val_loss = history.history['val_loss']

# 손실 값 그래프 그리기
plt.plot(train_loss, label='Train Loss')
plt.plot(val_loss, label='Validation Loss')
plt.title('Training and Validation Loss')
plt.xlabel('Epoch')
plt.ylabel('Loss')
plt.legend()
plt.show()

# 모델 예측
train_predict = model.predict(X_train)
test_predict = model.predict(X_test)

# 역정규화된 예측값과 실제값 계산
train_predict = scaler.inverse_transform(train_predict)
y_train_actual = scaler.inverse_transform([y_train])
test_predict = scaler.inverse_transform(test_predict)
y_test_actual = scaler.inverse_transform([y_test])

train_rmse = np.sqrt(mean_squared_error(y_train_actual[0], train_predict.flatten()))
test_rmse = np.sqrt(mean_squared_error(y_test_actual[0], test_predict.flatten()))

# MAE 계산
train_mae = mean_absolute_error(y_train_actual[0], train_predict.flatten())
test_mae = mean_absolute_error(y_test_actual[0], test_predict.flatten())

# 결과 출력
print("Train RMSE:", train_rmse)
print("Test RMSE:", test_rmse)
print("Train MAE:", train_mae)
print("Test MAE:", test_mae)

# 결과 시각화
plt.plot(np.arange(0, len(y_train_actual.flatten())), y_train_actual.flatten(), "b", label="real price(practice)")
plt.plot(
    np.arange(len(y_train_actual.flatten()), len(y_train_actual.flatten()) + len(y_test_actual.flatten())),
    y_test_actual.flatten(),
    "r",
    label="real price(test)",
)
plt.plot(
    np.arange(len(y_train_actual.flatten()), len(y_train_actual.flatten()) + len(y_test_actual.flatten())),
    test_predict.flatten(),
    "g",
    label="predict price",
)
plt.legend()
plt.show()


