#> asset:mob/0377.grey_guardian_v2/tick/01.sword1/main
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/skill_active

# アニメーション変える
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AH.Tick matches 0 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/attack1/play

# 演出
    execute if score @s AH.Tick matches 5 run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 0

# ダメージ
    execute if score @s AH.Tick matches 15 positioned ^ ^ ^2 run function asset:mob/0377.grey_guardian_v2/tick/common/slash

# リセット
    execute if score @s AH.Tick matches 32 run function asset:mob/0377.grey_guardian_v2/tick/skill_reset
