#> asset:mob/0378.red_knight_v3/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/378/death

# 抽象
    function asset:mob/super.death

# AJ死亡モーション
    execute as @e[type=item_display,tag=AI.AJ,sort=nearest,limit=1] run function animated_java:red_knight/pause_all
    execute as @e[type=item_display,tag=AI.AJ,sort=nearest,limit=1] run function animated_java:red_knight/animations/death2/play

# 死亡用のオブジェクト召喚
    data modify storage api: Argument.ID set value 2106
    function api:object/summon
