#> asset:mob/0123.lexiel_v3/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/123/death

datapack disable "file/AJ_Lexiel.zip"

function asset:mob/super.death

# AJ殺す
    execute as @e[type=item_display,tag=3F.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:lexiel/animations/pause_all
    execute as @e[type=item_display,tag=3F.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:lexiel/animations/death/play

# 死亡用のオブジェクト召喚
    data modify storage api: Argument.ID set value 2105
    execute at @e[type=item_display,tag=3F.AJ,distance=..100,sort=nearest,limit=1] run function api:object/summon
