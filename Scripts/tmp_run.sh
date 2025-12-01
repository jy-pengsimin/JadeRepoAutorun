#!/bin/bash

# 启用别名扩展
shopt -s expand_aliases
alias jadeserve='JadeServe --user psm --password 123456 --port 19462 '

# export START_TIME="2025-09-01 06:30:00"
# export CURRENT_TIME="2025-09-15 06:50:00"

# jadeserve run_history MacroBenchmarkAssetRiskParity main "$START_TIME" "$CURRENT_TIME"
# jadeserve run_history MacroBenchmarkAssetClusterRiskParity main "$START_TIME" "$CURRENT_TIME"

# jadeserve run_history MacroAlphaEconomicCycleModel main "$START_TIME" "$CURRENT_TIME"

# jadeserve run_history MacroRiskFactorUpdate main "$START_TIME" "$CURRENT_TIME"
# jadeserve run_history MacroRiskFactorExposureCalculate main "$START_TIME" "$CURRENT_TIME"


jadeserve run_schedule MacroBenchmarkAssetRiskParity main
jadeserve run_schedule MacroBenchmarkAssetClusterRiskParity main
jadeserve run_schedule MacroAlphaEconomicCycleModel main
jadeserve run_schedule MacroRiskFactorUpdate main
jadeserve run_schedule MacroRiskFactorExposureCalculate main