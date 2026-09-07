#> asset:artifact/1598.banisher/trigger/rec
#
#
#
# @within function asset:artifact/1598.banisher/trigger/**

#> Private
# @within function asset:artifact/1598.banisher/trigger/**
    #declare tag 1598.Target

# 着弾検知
    execute as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2] run tag @s add 1598.Target
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run return 0
# ダメージ処理
    execute as @e[type=#lib:living_without_player,tag=1598.Target,distance=..2,limit=1] run return run function asset:artifact/1598.banisher/trigger/damage

# 演出
    particle dust 0.973 0.769 0.973 0.5 ~ ~ ~ 0.0 0.0 0.0 0 3

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[distance=..30] run function asset:artifact/1598.banisher/trigger/rec
