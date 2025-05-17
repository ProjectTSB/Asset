#> asset:object/2128.heiloang_powerbreath/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2128.heiloang_powerbreath/tick/

# 予告
    execute rotated ~ ~ run function asset:object/2128.heiloang_powerbreath/tick/prediction_summon
    execute rotated ~90 ~ run function asset:object/2128.heiloang_powerbreath/tick/prediction_summon
    execute rotated ~180 ~ run function asset:object/2128.heiloang_powerbreath/tick/prediction_summon
    execute rotated ~270 ~ run function asset:object/2128.heiloang_powerbreath/tick/prediction_summon

# ノーマル以上では8Way
    execute if predicate api:global_vars/difficulty/1_normal run return 0
    execute rotated ~45 ~ run function asset:object/2128.heiloang_powerbreath/tick/prediction_summon
    execute rotated ~135 ~ run function asset:object/2128.heiloang_powerbreath/tick/prediction_summon
    execute rotated ~225 ~ run function asset:object/2128.heiloang_powerbreath/tick/prediction_summon
    execute rotated ~315 ~ run function asset:object/2128.heiloang_powerbreath/tick/prediction_summon
