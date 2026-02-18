#> asset:mob/0410.heiloang/tick/util/give_nightvision
#
# 汎用処理 暗視
#
# @within asset:mob/0410.heiloang/tick/**

# タイマー増加
    execute if score @s BE.NvTimer matches ..99 run return run scoreboard players add @s BE.NvTimer 1

# 暗視
    data modify storage api: Argument set value {ID:655,Duration:400,Stack:5}
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..160] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 終了
    scoreboard players set @s BE.NvTimer 0
