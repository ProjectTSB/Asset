#> asset:mob/0412.tiamat/tick/event/darkbreath/attack_loop
#
# ダークブレス
#
# @within asset:mob/0412.tiamat/tick/event/darkbreath/attack
# @within asset:mob/0412.tiamat/tick/event/darkbreath/attack_loop

# 演出
    particle dust 0.31 0.165 0.502 4 ~ ~ ~ 0 0 0 0 1 force
    particle cloud ~ ~ ~ 0 0 0 0.05 1

# ループ
    scoreboard players remove @s BG.Counter 1
    execute if score @s BG.Counter matches 1.. unless entity @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,distance=..2] positioned ^ ^ ^1 run function asset:mob/0412.tiamat/tick/event/darkbreath/attack_loop
