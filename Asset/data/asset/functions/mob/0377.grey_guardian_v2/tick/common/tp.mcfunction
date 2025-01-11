#> asset:mob/0377.grey_guardian_v2/tick/common/tp
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/**

# 自身をその場所まで持っていく(雑床埋まり対策もする)
    execute if block ~ ~ ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~
    execute unless block ~ ~ ~ #lib:no_collision run tp @s ~ ~0.1 ~ ~ ~
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,distance=..100,sort=nearest,limit=1] ~ ~ ~ ~ ~
