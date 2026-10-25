#> asset:mob/0301.karmic/tick/common/tp
#
#
#
# @within function asset:mob/0301.karmic/tick/**

# 自身をその場所まで持っていく(雑床埋まり対策もする)
    execute if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ ~
    execute unless block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~0.1 ~ ~ ~
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,distance=..100,sort=nearest,limit=1] ~ ~ ~ ~ ~
