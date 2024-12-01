#> asset:mob/0378.red_night_v3/tick/02.sword2/main
#
#
#
# @within function asset:mob/0378.red_night_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/attack2/play

# ダメージ
    execute if score @s AI.Tick matches 8 positioned ^ ^ ^2 run function asset:mob/0378.red_night_v3/tick/common/slash

    execute if score @s AI.Tick matches 17 positioned ^ ^ ^2 run function asset:mob/0378.red_night_v3/tick/common/slash

# リセット
    execute if score @s AI.Tick matches 28 run function asset:mob/0378.red_night_v3/tick/skill_reset
