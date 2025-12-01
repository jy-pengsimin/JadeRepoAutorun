#!/bin/bash

# 启用别名扩展
shopt -s expand_aliases
alias jadeserve='JadeServe --user psm --password 123456 --port 19462 '

export CURRENT_TIME="2025-09-01 06:50:00"

jadeserve run_history MacroAssetDataProcess main "2010-04-16 14:30:00" "$CURRENT_TIME"

jadeserve run_history MacroBenchmarkAssetRiskParity main "2019-08-04 06:30:00" "$CURRENT_TIME"

# jadeserve run_history MacroBenchmarkAssetClusterRiskParity main "2019-08-04 06:30:00" "$CURRENT_TIME"
jadeserve run_history MacroBenchmarkAssetClusterWithLeverageRiskParity main "2019-08-04 06:30:00" "$CURRENT_TIME"

jadeserve run_history MacroAlphaEconomicCycleModel main "2010-07-01 06:30:00" "$CURRENT_TIME"

jadeserve run_history MacroRiskFactorWindowIdentification main "2017-01-01 06:30:00" "$CURRENT_TIME"
jadeserve run_history MacroRiskFactorLoadingsAlign main "2017-01-01 06:30:00" "$CURRENT_TIME"
jadeserve run_history MacroRiskFactorHistoryBuilder main "2017-01-01 06:30:00" "$CURRENT_TIME"
jadeserve run_history MacroRiskFactorUpdate main "2017-01-01 06:30:00" "$CURRENT_TIME"
jadeserve run_history MacroRiskFactorSelection main "2017-01-01 06:30:00" "$CURRENT_TIME"
jadeserve run_history MacroRiskFactorExposureWindow main "2017-01-01 06:30:00" "$CURRENT_TIME"
jadeserve run_history MacroRiskFactorExposureCalculate main "2017-01-01 06:30:00" "$CURRENT_TIME"

jadeserve run_history MacroRiskControlFactorRCOriginBound main "2019-09-01 06:30:00" "$CURRENT_TIME"
jadeserve run_history MacroRiskControlFactorRCBound main "2019-09-01 06:30:00" "$CURRENT_TIME"

jadeserve run_history MacroRiskControlAssetWeightOriginBound main "2019-09-01 06:30:00" "$CURRENT_TIME"
jadeserve run_history MacroRiskControlAssetWeightBound main "2019-09-01 06:30:00" "$CURRENT_TIME"

jadeserve run_history MacroOptimizeModel main "2019-12-01 06:30:00" "$CURRENT_TIME"