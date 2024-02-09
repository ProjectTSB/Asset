#> asset:mob/0341.louvert/tick/projectile/soul_quake_hard/0.summon
#
# ソウルクエイク追尾 召喚
#
# @within function asset:mob/0341.louvert/**

# 元となるMobを召喚する
    summon marker ~ ~ ~ {Tags:["9H.Temp.This","9H.SoulQuakeHard"]}

# 初期化処理
    execute as @e[type=marker,tag=9H.Temp.This,distance=..0.01] at @s run scoreboard players set @s 9H.ProjectileTick 0
    execute as @e[type=marker,tag=9H.Temp.This,distance=..0.01] at @s run tag @s remove 9H.Temp.This