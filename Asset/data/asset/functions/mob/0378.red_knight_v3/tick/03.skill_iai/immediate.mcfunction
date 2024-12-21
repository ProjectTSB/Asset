#> asset:mob/0378.red_knight_v3/tick/03.skill_iai/immediate
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/03.skill_iai/main

# アニメーションを変更
    execute as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_melee_3/stop
    execute as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_melee_3_immediate/play

# スコアを変更
    scoreboard players set @s AI.Tick 24
