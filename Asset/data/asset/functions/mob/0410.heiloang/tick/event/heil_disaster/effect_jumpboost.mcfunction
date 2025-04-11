#> asset:mob/0410.heiloang/tick/event/heil_disaster/effect_jumpboost
#
# ヘイルディザスター
#
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 跳躍力上昇
    data modify storage api: Argument set value {ID:192,Duration:180,Stack:5}
    execute as @a[distance=..160] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
    # execute if score @s BE.EventTimer matches 215 run effect give @a[distance=..80] jump_boost 9 5
