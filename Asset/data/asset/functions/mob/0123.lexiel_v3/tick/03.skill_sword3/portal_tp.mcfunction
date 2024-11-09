#> asset:mob/0123.lexiel_v3/tick/03.skill_sword3/portal_tp
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/main

# 呼んだオブジェクトにTPしてぶっ殺す。その際にプレイヤー方向をみるからコモンのは使えない
    tp @s @e[type=marker,scores={ObjectID=2102},distance=..70,limit=1]
    kill @e[type=marker,scores={ObjectID=2102},distance=..70,limit=1]
# AJも持ってくる
    execute at @s run function asset:mob/0123.lexiel_v3/tick/common/tp_vfx
    execute at @s run tp @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,distance=..100,sort=nearest,limit=1] ~ ~ ~
