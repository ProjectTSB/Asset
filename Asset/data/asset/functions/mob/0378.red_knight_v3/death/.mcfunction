#> asset:mob/0378.red_knight_v3/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/378/death

datapack disable "file/AJ_RedKnight.zip"

# 抽象
    function asset:mob/super.death

# AJ死亡モーション
    execute as @e[type=item_display,tag=AI.AJ,sort=nearest,limit=1] run function animated_java:red_knight/animations/neutral_ground/stop
    execute as @e[type=item_display,tag=AI.AJ,sort=nearest,limit=1] run function animated_java:red_knight/animations/neutral_air/stop

    execute as @e[type=item_display,tag=AI.AJ,sort=nearest,limit=1] run function animated_java:red_knight/pause_all
    execute as @e[type=item_display,tag=AI.AJ,sort=nearest,limit=1] run function animated_java:red_knight/animations/death2/play

# 召喚
    data modify storage api: Argument.ID set value 2133
    execute at @s run function api:object/summon
