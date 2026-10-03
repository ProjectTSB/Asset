#> asset:effect/0393.launching_rice/tick/rec
#
#
#
# @within function asset:effect/0393.launching_rice/tick/**

#> Private
# @within function asset:effect/0393.launching_rice/tick/**
    #declare tag 0393.Target

# 着弾検知
    execute as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run tag @s add 0393.Target
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run return fail

# ダメージ処理
    execute if entity @e[type=#lib:living_without_player,tag=0393.Target,dx=0,limit=1] run return run function asset:effect/0393.launching_rice/tick/damage

# 演出
    particle dust 1 1 1 0.25 ~ ~ ~ 0.01 0.01 0.01 0 3

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[distance=..7] run function asset:effect/0393.launching_rice/tick/rec
