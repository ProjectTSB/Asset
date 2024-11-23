#> asset:mob/0377.grey_guardian_v2/tick/04.axe2/main
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/skill_active

# アニメーション変える
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/attack4/play

# リセット
    execute if score @s AH.Tick matches 66 run function asset:mob/0377.grey_guardian_v2/tick/skill_reset
