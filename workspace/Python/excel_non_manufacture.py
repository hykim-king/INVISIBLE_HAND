import os
import openpyxl
import warnings
import numpy as np
import cx_Oracle
warnings.simplefilter("ignore")
os.chdir("..")
xlsx_folder = os.path.join('doc', 'xlsx')
# 파일명
file_list_xlsx = [f for f in os.listdir(xlsx_folder) if f.endswith('.xlsx')]

dsn = cx_Oracle.makedsn('192.168.0.123', 1521, 'xe')
db = cx_Oracle.connect('INVISIBLEHAND', '4321', dsn)
cursor = db.cursor()

def get_xlsx_column(xlsxname):
    work_arr = []
    for file_name in file_list_xlsx:
        if file_name.find(xlsxname) != -1:
            count = 0
            #print(file_name)
            workbook = openpyxl.load_workbook(xlsx_folder + "\\" + file_name)
            sheet = workbook.active
            for row in sheet.iter_rows(237, sheet.max_row, values_only=True):
                count = count + 1
                if count % 6 == 0:
                    work_arr.append(np.array(row[3:], dtype=np.float64))
    return np.array(work_arr)

#temp = np.array([[1,2,3,4],[5,6,7,8]])
#print(np.shape(temp))
#print(temp[0].shape)


upjong = ['건설업','서비스업','도매 및 소매업','운수업','숙박 및 음식점업',
'출판,영상,방송통신 및 정보서비스업','부동산업 및 임대업','전문,과학 및 기술서비스업','사업시설관리 및 사업지원서비스업','교육서비스업',
'예술,스포츠 및 여가관련서비스업','수리 및 기타개인서비스업'
]

monthdate = [201501, 201502, 201503, 201504, 201505, 201506, 201507, 201508, 201509, 201510, 201511, 201512,
             201601, 201602, 201603, 201604, 201605, 201606, 201607, 201608, 201609, 201610, 201611, 201612,
             201701, 201702, 201703, 201704, 201705, 201706, 201707, 201708, 201709, 201710, 201711, 201712,
             201801, 201802, 201803, 201804, 201805, 201806, 201807, 201808, 201809, 201810, 201811, 201812,
             201901, 201902, 201903, 201904, 201905, 201906, 201907, 201908, 201909, 201910, 201911, 201912,
             202001, 202002, 202003, 202004, 202005, 202006, 202007, 202008, 202009, 202010, 202011, 202012,
             202101, 202102, 202103, 202104, 202105, 202106, 202107, 202108, 202109, 202110, 202111, 202112,
             202201, 202202, 202203, 202204, 202205, 202206, 202207, 202208, 202209, 202210, 202211, 202212]

geongijunban = get_xlsx_column("2015~2022경기전반 실적")      #(12,96)
goyongsujun = get_xlsx_column("2015~2022고용수준 실적")
neasupanma = get_xlsx_column("2015~2022내수판매 실적")
suchul = get_xlsx_column("2015~2022수출실적 SBBHI.xlsx")
yeonupiic = get_xlsx_column("2015~2022영업이익 실적 SBBHI.xlsx")
jagumsajung = get_xlsx_column("2015~2022자금사정 실적 SBBHI.xlsx")

for index in range(len(monthdate)):
    for column in range(len(upjong)):
        cursor.execute(
            "INSERT INTO SBHITABLE VALUES(TO_DATE('{0}','YYYYMM'),'{1}','{2}',{3},{4},{5},{6},{7},{8},{9},{10},{11},{12})".format(
                monthdate[index], "비제조업", upjong[column],
                geongijunban[column][index], goyongsujun[column][index], neasupanma[column][index],
                suchul[column][index], yeonupiic[column][index], jagumsajung[column][index],
                0, 0, 0, 0)
        )
cursor.execute("COMMIT")
print("비제조업SBHI값 삽입완료.")
