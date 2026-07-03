#> asset:mob/0376.convict_v2/tick/common/tp
#
#
#
# @within function asset:mob/0376.convict_v2/tick/**

# 自身をその場所まで持っていく(雑床埋まり対策もする)
    execute if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ ~
    execute unless block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~0.1 ~ ~ ~
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,distance=..100,sort=nearest,limit=1] ~ ~ ~ ~ ~
