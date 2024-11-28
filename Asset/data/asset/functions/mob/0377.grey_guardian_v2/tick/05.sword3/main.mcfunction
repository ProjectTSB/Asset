#> asset:mob/0377.grey_guardian_v2/tick/05.sword3/main
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/skill_active

# アニメーション変える
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/attack5/play

    execute if score @s AH.Tick matches 11 positioned ^ ^ ^1 run function asset:mob/0377.grey_guardian_v2/tick/common/slash
    execute if score @s AH.Tick matches 11 positioned ^ ^ ^3.5 run function asset:mob/0377.grey_guardian_v2/tick/common/slash
    execute if score @s AH.Tick matches 11 positioned ^ ^ ^5 run function asset:mob/0377.grey_guardian_v2/tick/common/tp


# リセット
    execute if score @s AH.Tick matches 32 run function asset:mob/0377.grey_guardian_v2/tick/skill_reset
