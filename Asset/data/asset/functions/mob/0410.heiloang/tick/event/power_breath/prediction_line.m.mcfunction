#> asset:mob/0410.heiloang/tick/event/power_breath/prediction_line.m
#
# パワーブレス
#
# @within
#    function asset:mob/0410.heiloang/tick/event/power_breath/summon_attack_pos_first
#    function asset:mob/0410.heiloang/tick/event/power_breath/summon_attack_pos

# 予告
    $execute rotated $(Offset) 0 rotated ~ ~ run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line_summon
    $execute rotated $(Offset) 0 rotated ~90 ~ run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line_summon
    $execute rotated $(Offset) 0 rotated ~180 ~ run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line_summon
    $execute rotated $(Offset) 0 rotated ~270 ~ run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line_summon

# ノーマル以上では8Way
    execute if predicate api:global_vars/difficulty/1_normal run return 0
    $execute rotated $(Offset) 0 rotated ~45 ~ run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line_summon
    $execute rotated $(Offset) 0 rotated ~135 ~ run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line_summon
    $execute rotated $(Offset) 0 rotated ~225 ~ run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line_summon
    $execute rotated $(Offset) 0 rotated ~315 ~ run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line_summon
