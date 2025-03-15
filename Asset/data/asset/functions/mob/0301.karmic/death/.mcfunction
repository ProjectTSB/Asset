#> asset:mob/0301.karmic/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/301/death

# AJ死亡モーション
    execute as @e[type=item_display,tag=8D.AJ,sort=nearest,limit=1] run function asset:mob/0301.karmic/death/animation_reset
    execute as @e[type=item_display,tag=8D.AJ,sort=nearest,limit=1] run function animated_java:karmic/pause_all
    execute as @e[type=item_display,tag=8D.AJ,sort=nearest,limit=1] run function animated_java:karmic/animations/dead/play

# 召喚
    data modify storage api: Argument.ID set value 2219
    execute at @s run function api:object/summon

# Super
    function asset:mob/super.death
