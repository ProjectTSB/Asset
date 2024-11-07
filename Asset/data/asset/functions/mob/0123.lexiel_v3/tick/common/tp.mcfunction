#> asset:mob/0123.lexiel_v3/tick/common/tp
#
# TPするときの処理
#
# @within function asset:mob/0123.lexiel_v3/**/**/**

# 自身をその場所まで持っていく
    tp @s ~ ~ ~ ~ ~
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,distance=..100,sort=nearest,limit=1] ~ ~ ~ ~ ~
