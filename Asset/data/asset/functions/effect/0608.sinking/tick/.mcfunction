#> asset:effect/0608.sinking/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0608.sinking/_/tick

# 演出
    particle dust 0.149 0.682 0.741 1 ~ ~1.2 ~ 0.6 0.3 0.6 0 3 normal @a

# (Lv - 1)を計算し、ストレージに代入
    execute store result score $Lv Temporary run data get storage asset:context Stack
    execute store result storage asset:temp GW.Lv int 1 run scoreboard players remove $Lv Temporary 1

    function asset:effect/0608.sinking/tick/debuff.m with storage asset:temp GW

# リセット
    scoreboard players reset $Lv Temporary
    data remove storage asset:temp GW