#> asset:effect/0393.launching_rice/tick/rec
#
#
#
# @within function asset:effect/0393.launching_rice/tick/**

#> private
# @within function asset:effect/0393.launching_rice/tick/*
    #declare tag 0393.This

# This
    tag @s add 0393.This

# 着弾検知
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run return run function asset:effect/0393.launching_rice/tick/damage
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run return fail

# 演出
    particle dust 1 1 1 0.25 ~ ~ ~ 0.01 0.01 0.01 0 3

# リセット
    tag @s remove 0393.This

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[distance=..7] run function asset:effect/0393.launching_rice/tick/rec
