#> asset:effect/0393.launching_rice/tick/rec
#
#
#
# @within function asset:effect/0393.launching_rice/tick/**

#> Private
# @within function asset:effect/0393.launching_rice/tick/**
    #declare tag 0393.Hit
    #declare tag 0393.Target

# 着弾検知
    execute if entity @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] run tag @s add 0393.Hit
    execute as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] run tag @s add 0393.Target
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add 0393.Hit

# ダメージ処理
    execute if entity @e[type=#lib:living_without_player,tag=0393.Target,distance=..2,limit=1] run function asset:effect/0393.launching_rice/tick/damage

# 演出
    particle dust 1 1 1 0.25 ~ ~ ~ 0.0 0.0 0.0 0 1

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[tag=!0393.Hit,distance=..7] run function asset:effect/0393.launching_rice/tick/rec
