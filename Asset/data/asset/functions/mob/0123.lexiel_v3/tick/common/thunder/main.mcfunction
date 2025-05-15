#> asset:mob/0123.lexiel_v3/tick/common/thunder/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/**/**


# ハード限定、偏差する可能性がある
    execute if predicate api:global_vars/difficulty/3_blessless if predicate lib:random_pass_per/10 run function asset:mob/0123.lexiel_v3/tick/common/thunder/predict

# 上記で召喚していない場合
    execute if entity @s[tag=!UsedThunder] run function asset:mob/0123.lexiel_v3/tick/common/thunder/spread

# リセット
    tag @s remove UsedThunder
