#> asset:mob/0377.grey_guardian_v2/tick/02.sword2/main
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/skill_active

# アニメーション変える
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/attack2/play

# ダメージ
    execute if score @s AH.Tick matches 8 positioned ^ ^ ^2 run function asset:mob/0377.grey_guardian_v2/tick/common/slash

    execute if score @s AH.Tick matches 17 positioned ^ ^ ^2 run function asset:mob/0377.grey_guardian_v2/tick/common/slash

# リセット
    execute if score @s AH.Tick matches 28 run function asset:mob/0377.grey_guardian_v2/tick/skill_reset
