import cx_Oracle
import numpy as np
import math
from keras.callbacks import LearningRateScheduler
from sklearn.preprocessing import MinMaxScaler
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import LSTM, Dense
from tensorflow.keras.optimizers import Adam

dsn = cx_Oracle.makedsn('192.168.0.123', 1521, 'xe')
db = cx_Oracle.connect('INVISIBLEHAND', '4321', dsn)
cursor = db.cursor()

B_jejo_upjong = ['건설업','서비스업','도매 및 소매업','운수업','숙박 및 음식점업',
'출판,영상,방송통신 및 정보서비스업','부동산업 및 임대업','전문,과학 및 기술서비스업','사업시설관리 및 사업지원서비스업','교육서비스업',
'예술,스포츠 및 여가관련서비스업','수리 및 기타개인서비스업'
]

jejo_upjong = ['식료품','음료','섬유제품 의복제외','의복 의복액세서리 및 모피제품','가죽 가방 및 신발',
'목재 및 나무제품','펄프 종이 및 종이제품','인쇄 및 기록매체','화학물질 및 화학제품','의료용 물질 및 의약품',
'고무제품 및 플라스틱제품','비금속 광물제품','1차 금속','금속가공제품','전자부품 컴퓨터 영상 음향 및 통신장비',
'의료 정밀 광학기기 및 시계','전기장비','기타 기계 및 장비','자동차 및 트레일러','기타 운송장비',
'가구','기타 제품'
]
jejo_sbhicolumn = ['SBHI','SBHI2','SBHI3','SBHI4','SBHI5','SBHI6','SBHI7','SBHI8','SBHI9','SBHI10']
B_jejo_sbhicolumn = ['SBHI','SBHI2','SBHI3','SBHI4','SBHI5','SBHI6']

def lr_schedule(epoch, lr):
    if epoch < 10:
        return 0.025
    elif epoch < 50:
        return 0.01
    else:
        return 0.005



for upjong in range(len(B_jejo_upjong)):
    insert_data = np.array([])
    for column in range(len(B_jejo_sbhicolumn)):
        print("column:", column)
        print("upjong:", upjong)
        cursor.execute("select {0} from sbhitable where subcategory = '{1}' order by chartdate".format(B_jejo_sbhicolumn[column], B_jejo_upjong[upjong]))
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
        train_size = int(0.95 * len(X))
        X_train, X_test = X[:train_size], X[train_size:]
        y_train, y_test = y[:train_size], y[train_size:]

        # LSTM 모델 정의
        model = Sequential()
        model.add(LSTM(50, input_shape=(look_back, 1), dropout=0.25))
        model.add(Dense(1))
        # 학습률 스케줄링 콜백 정의
        lr_scheduler = LearningRateScheduler(lr_schedule)
        # Adam 옵티마이저와 손실 함수 설정
        model.compile(optimizer=Adam(), loss="mean_squared_error")
        # 모델 학습
        model.fit(X_train, y_train, epochs=250, batch_size=8, verbose=2, callbacks=[lr_scheduler])
        # 테스트 데이터로 예측 수행
        predictions = model.predict(sbhidata_scaled[-10:])
        train_predict = scaler.inverse_transform(predictions)
        sample = train_predict[-1:].flatten()
        round_sample = np.round(sample,2)
        insert_data = np.concatenate([insert_data, round_sample])
    cursor.execute("INSERT INTO SBHITABLE VALUES(TO_DATE('202308','YYYYMM'),'{0}','{1}',{2},{3},{4},{5},{6},{7},{8},{9},{10},{11})".format(
                "비제조업", B_jejo_upjong[upjong],
                round(insert_data[0],1),round(insert_data[1],1),round(insert_data[2],1),round(insert_data[3],1),round(insert_data[4],1),
                round(insert_data[5],1),0,0,0,0)
    )
    print("INSERT INTO SBHITABLE VALUES(TO_DATE('202308','YYYYMM'),'{0}','{1}',{2},{3},{4},{5},{6},{7},{8},{9},{10},{11})".format(
                "비제조업", B_jejo_upjong[upjong],
                round(insert_data[0],1),round(insert_data[1],1),round(insert_data[2],1),round(insert_data[3],1),round(insert_data[4],1),
                round(insert_data[5],1),0,0,0,0)
    )
    cursor.execute("COMMIT")

'''
#제조업
for upjong in range(len(jejo_upjong)):
    insert_data = np.array([])
    for column in range(len(jejo_sbhicolumn)):
        print("column:", column)
        print("upjong:", upjong)
        cursor.execute("select {0} from sbhitable where subcategory = '{1}' order by chartdate".format(jejo_sbhicolumn[column], jejo_upjong[upjong]))
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
        train_size = int(0.95 * len(X))
        X_train, X_test = X[:train_size], X[train_size:]
        y_train, y_test = y[:train_size], y[train_size:]

        # LSTM 모델 정의
        model = Sequential()
        model.add(LSTM(50, input_shape=(look_back, 1), dropout=0.25))
        model.add(Dense(1))
        # 학습률 스케줄링 콜백 정의
        lr_scheduler = LearningRateScheduler(lr_schedule)
        # Adam 옵티마이저와 손실 함수 설정
        model.compile(optimizer=Adam(), loss="mean_squared_error")
        # 모델 학습
        model.fit(X_train, y_train, epochs=5, batch_size=8, verbose=2, callbacks=[lr_scheduler])
        # 테스트 데이터로 예측 수행
        predictions = model.predict(sbhidata_scaled[-10:])
        train_predict = scaler.inverse_transform(predictions)
        sample = train_predict[-1:].flatten()
        round_sample = np.round(sample,2)
        insert_data = np.concatenate([insert_data, round_sample])
    cursor.execute("INSERT INTO SBHITABLE VALUES(TO_DATE('202308','YYYYMM'),'{0}','{1}',{2},{3},{4},{5},{6},{7},{8},{9},{10},{11})".format(
                "제조업", jejo_upjong[upjong],
                round(insert_data[0],1),round(insert_data[1],1),round(insert_data[2],1),round(insert_data[3],1),round(insert_data[4],1),
                round(insert_data[5],1),round(insert_data[6],1),round(insert_data[7],1),round(insert_data[8],1),round(insert_data[9],1))
    )
    print("INSERT INTO SBHITABLE VALUES(TO_DATE('202308','YYYYMM'),'{0}','{1}',{2},{3},{4},{5},{6},{7},{8},{9},{10},{11})".format(
                "제조업", jejo_upjong[upjong],
                round(insert_data[0],1),round(insert_data[1],1),round(insert_data[2],1),round(insert_data[3],1),round(insert_data[4],1),
                round(insert_data[5],1),round(insert_data[6],1),round(insert_data[7],1),round(insert_data[8],1),round(insert_data[9],1))
    )
    #cursor.execute("COMMIT")
'''