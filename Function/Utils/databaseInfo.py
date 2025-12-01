from factortool import tool, user
import pandas as pd

def getFactorUser():
    factor_user = user.User(ch_db_user='macro_user', ch_db_password='macro666^_', ch_db_port='9001', ch_db_name='factor_macro_test')
    return factor_user

def getFactorUserPG():
    factor_user_PG = user.User(ch_db_user='pg_macro_user', ch_db_password='macro_fac666^', ch_db_port='9001', ch_db_name='pg_macro')
    return factor_user_PG

def getDBTableName(factor_user:user.User):
    selector = tool.Selector(factor_user)
    print(selector.select_bars_sql("show tables"))


def loadDatafromMacroDB(nameDB:str, process=False):
    user = getFactorUser()
    selector = tool.Selector(user)
    query = f"SELECT time,symbol,value FROM {nameDB} ORDER BY time ASC"
    data = selector.select_bars_sql(query)
    if process:
        data["time"] = pd.to_datetime(data["time"])
        data["time"] = data["time"].dt.strftime("%Y-%m-%d")
        data.rename(columns={"time":"Date"}, inplace=True)
    return data

def writeData2MacroDB(data:pd.DataFrame, nameDB:str):
    # data是待写入数据，已经处理好time
    user = getFactorUser()
    # 差异化写入，未实现  
    # 先删除原始库，再重新写入
    drop = tool.Droper(user)
    drop.drop_factor_table(nameDB)

    writer = tool.Writer(user)
    writer.write_dataframe_to_db(data, user)
        