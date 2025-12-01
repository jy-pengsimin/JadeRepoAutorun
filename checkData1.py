from Function.Utils.databaseInfo import *

user = getFactorUser()
selector = tool.Selector(user)

dataBaseList = [
    "macro_asset_avg_price",
    "macro_asset_close",
    "macro_asset_settlement",
    "macro_asset_spot_price",
    "macro_asset_spot_price_exchange_rate",
    "macro_asset_return_rate",
    "macro_etf_shares_convert_ratio",
    "macro_future_main_contract_code",
    "macro_future_contract_long_deposit_future",
    "macro_future_contract_short_deposit_future",
    "macro_future_transaction_procedure_rate_future",
    "macro_future_transaction_procedure_fee_future",
    "macro_future_chg_ratio_lmit_future",
    "macro_benchmark_asset_weight",
    "macro_risk_factor_window",
    "macro_risk_factor_loadings_PC1",
    "macro_risk_factor_loadings_PC2",
    "macro_risk_factor_loadings_PC3",
    "macro_risk_factor_loadings_PC4",
    "macro_risk_factor_loadings_PC5",
    "macro_risk_factor_loadings_PC6",
    "macro_risk_factor_loadings_PC7",
    "macro_risk_factor_loadings_PC8",
    "macro_risk_factor_loadings_PC9",
    "macro_risk_factor_loadings_PC10",
    "macro_risk_factor_loadings_PC11",
    "macro_risk_factor_loadings_PC12",
    "macro_risk_factor_loadings_PC13",
    "macro_risk_factor_loadings_PC1_aligned",
    "macro_risk_factor_loadings_PC2_aligned",
    "macro_risk_factor_loadings_PC3_aligned",
    "macro_risk_factor_loadings_PC4_aligned",
    "macro_risk_factor_loadings_PC5_aligned",
    "macro_risk_factor_loadings_PC6_aligned",
    "macro_risk_factor_loadings_PC7_aligned",
    "macro_risk_factor_loadings_PC8_aligned",
    "macro_risk_factor_loadings_PC9_aligned",
    "macro_risk_factor_loadings_PC10_aligned",
    "macro_risk_factor_loadings_PC11_aligned",
    "macro_risk_factor_loadings_PC12_aligned",
    "macro_risk_factor_loadings_PC13_aligned",
    "macro_risk_factor_pca_2016_hist",
    "macro_risk_factor_pca_2017_hist",
    "macro_risk_factor_pca_2018_hist",
    "macro_risk_factor_pca_2019_hist",
    "macro_risk_factor_pca_2020_hist",
    "macro_risk_factor_pca_2021_hist",
    "macro_risk_factor_pca_2022_hist",
    "macro_risk_factor_pca_2023_hist",
    "macro_risk_factor_pca_2024_hist",
    "macro_risk_factor_pca_2016_update",
    "macro_risk_factor_pca_2017_update",
    "macro_risk_factor_pca_2018_update",
    "macro_risk_factor_pca_2019_update",
    "macro_risk_factor_pca_2020_update",
    "macro_risk_factor_pca_2021_update",
    "macro_risk_factor_pca_2022_update",
    "macro_risk_factor_pca_2023_update",
    "macro_risk_factor_pca_2024_update",
    "macro_risk_factor_PC1_selected_info",
    "macro_risk_factor_PC2_selected_info",
    "macro_risk_factor_PC3_selected_info",
    "macro_risk_factor_PC4_selected_info",
    "macro_risk_factor_PC5_selected_info",
    "macro_risk_factor_PC6_selected_info",
    "macro_risk_factor_PC7_selected_info",
    "macro_risk_factor_PC8_selected_info",
    "macro_risk_factor_PC9_selected_info",
    "macro_risk_factor_PC10_selected_info",
    "macro_risk_factor_PC11_selected_info",
    "macro_risk_factor_PC12_selected_info",
    "macro_risk_factor_PC13_selected_info",
    "macro_risk_factor_exposure_window",
    "macro_risk_factor_PC1_exposure",
    "macro_risk_factor_PC2_exposure",
    "macro_risk_factor_PC3_exposure",
    "macro_risk_factor_PC4_exposure",
    "macro_risk_factor_PC5_exposure",
    "macro_risk_factor_PC6_exposure",
    "macro_risk_factor_PC7_exposure",
    "macro_risk_factor_PC8_exposure",
    "macro_risk_factor_PC9_exposure",
    "macro_risk_factor_PC10_exposure",
    "macro_risk_factor_PC11_exposure",
    "macro_risk_factor_PC12_exposure",
    # "macro_risk_factor_PC13_exposure",
    "macro_return_factor_cycle_model",
    "macro_risk_control_factor_RC_bound",
    "macro_risk_control_factor_RC_origin_bound",
    "macro_optimize_asset_weight"
]

for dataBase in dataBaseList:
    print(dataBase)
    # query = "SELECT * from macro_optimize_asset_weight"
    # query = f"SELECT * from {dataBase}"
    # query = f"""
    #     SELECT 
    #         time, symbol, value 
    #     FROM (
    #         SELECT 
    #             *,
    #             ROW_NUMBER() OVER (
    #                 PARTITION BY time, symbol 
    #                 ORDER BY ct DESC
    #             ) AS rn
    #         FROM {dataBase}
    #     ) ranked
    #     WHERE rn = 1
    #     ORDER BY time
    #     """
    query = f"select distinct(time) from {dataBase}"

    newData = selector.select_bars_sql(query)
    # newData = newData.sort_values('ct').drop_duplicates(
    #             subset=["time", "symbol"], 
    #             keep="last"
    #         )
    newData = newData.sort_values("time")
    # newData.reset_index(drop=True, inplace=True)
    startDate = newData["time"].iloc[0]
    endDate = newData["time"].iloc[-1]
    
    # newData = (
    #     newData
    #     .set_index(["time", "symbol"])
    #     .unstack()
    #     .droplevel(0, axis=1)  # 删除value多级索引
    #     .reset_index()
    #     .rename_axis(None, axis=1)  # 清除列索引名称
    # )
    # cols = newData.columns.to_list()
    # cols.remove("time")

    # newData['Date'] = pd.to_datetime(newData['time'])
    # newData['Date'] = newData['Date'].dt.strftime('%Y-%m-%d')

    # newData = newData[["Date"]+cols]
    # newData.reset_index(drop=True, inplace=True)
    # startDate = newData["Date"].iloc[0]
    # endDate = newData["Date"].iloc[-1]
    print(f"数据日期：{startDate}~{endDate}")