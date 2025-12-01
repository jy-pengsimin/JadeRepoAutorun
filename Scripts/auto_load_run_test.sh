#!/bin/bash

# 启用别名扩展
shopt -s expand_aliases
alias jadeserve='JadeServe --user psm --password 123456 --port 19462 '

jadeserve load https://github.com/jy-factors-macro-team/MacroAssetDataProcess.git main
jadeserve run_test MacroAssetDataProcess main --start_time '2025-08-13 14:30:00' --end_time '2025-08-14 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroBenchmarkAssetRiskParity.git main
jadeserve run_test MacroBenchmarkAssetRiskParity main --start_time '2025-08-03 06:30:00' --end_time '2025-08-03 06:50:00'

# jadeserve load https://github.com/jy-factors-macro-team/MacroBenchmarkAssetClusterRiskParity.git main
# jadeserve run_test MacroBenchmarkAssetClusterRiskParity main --start_time '2025-08-03 06:30:00' --end_time '2025-08-03 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroBenchmarkAssetClusterWithLeverageRiskParity.git main
jadeserve run_test MacroBenchmarkAssetClusterWithLeverageRiskParity main --start_time '2025-09-21 06:30:00' --end_time '2025-09-21 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroAlphaEconomicCycleModel.git main
jadeserve run_test MacroAlphaEconomicCycleModel main --start_time '2025-01-01 06:30:00' --end_time '2025-01-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskFactorWindowIdentification.git main
jadeserve run_test MacroRiskFactorWindowIdentification main --start_time '2025-01-01 06:30:00' --end_time '2025-01-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskFactorLoadingsAlign.git main
jadeserve run_test MacroRiskFactorLoadingsAlign main --start_time '2025-01-01 06:30:00' --end_time '2025-01-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskFactorHistoryBuilder.git main
jadeserve run_test MacroRiskFactorHistoryBuilder main --start_time '2025-01-01 06:30:00' --end_time '2025-01-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskFactorUpdate.git main
jadeserve run_test MacroRiskFactorUpdate main --start_time '2025-01-01 06:30:00' --end_time '2025-01-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskFactorSelection.git main
jadeserve run_test MacroRiskFactorSelection main --start_time '2025-01-01 06:30:00' --end_time '2025-01-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskFactorExposureWindow.git main
jadeserve run_test MacroRiskFactorExposureWindow main --start_time '2025-01-01 06:30:00' --end_time '2025-01-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskFactorExposureCalculate.git main
jadeserve run_test MacroRiskFactorExposureCalculate main --start_time '2025-01-03 06:30:00' --end_time '2025-01-03 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskControlFactorRCOriginBound.git main
jadeserve run_test MacroRiskControlFactorRCOriginBound main --start_time '2025-06-01 06:30:00' --end_time '2025-06-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskControlFactorRCBound.git main
jadeserve run_test MacroRiskControlFactorRCBound main --start_time '2025-08-01 06:30:00' --end_time '2025-08-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskControlAssetWeightOriginBound.git main
jadeserve run_test MacroRiskControlAssetWeightOriginBound main --start_time '2025-08-01 06:30:00' --end_time '2025-08-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroRiskControlAssetWeightBound.git main
jadeserve run_test MacroRiskControlAssetWeightBound main --start_time '2025-08-01 06:30:00' --end_time '2025-08-01 06:50:00'

jadeserve load https://github.com/jy-factors-macro-team/MacroOptimizeModel.git main
jadeserve run_test MacroOptimizeModel main --start_time '2025-08-03 06:30:00' --end_time '2025-08-03 06:50:00'