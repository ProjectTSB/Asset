#> asset:mob/0377.grey_guardian_v2/tick/00.opening/main
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/skill_active

# アニメーション変える
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/summon/play

# 演出
    execute if score @s AH.Tick matches 6 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1
# リセット
    execute if score @s AH.Tick matches 24 run function asset:mob/0377.grey_guardian_v2/tick/skill_reset
