#> asset:mob/0376.convict_v2/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/376/death

# AJ殺す
    execute as @e[type=item_display,tag=AG.AJ,sort=nearest,limit=1] run function animated_java:convict/animations/pause_all
    execute as @e[type=item_display,tag=AG.AJ,sort=nearest,limit=1] run function animated_java:convict/animations/dead/play

# 死亡用のオブジェクト召喚
    data modify storage api: Argument.ID set value 2106
    function api:object/summon
