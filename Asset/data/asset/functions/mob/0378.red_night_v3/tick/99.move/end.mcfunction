#> asset:mob/0378.red_night_v3/tick/99.move/end
#
#
#
# @within function asset:mob/0378.red_night_v3/tick/99.move/main

# モーション戻す
    execute as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/move/stop
    execute as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/play

# 時間終わる
    scoreboard players set @s AI.Tick 0
