#> asset:mob/0410.heiloang/tick/event/power_breath/attack_loop
#
# パワーブレス
#
# @within asset:mob/0410.heiloang/tick/event/power_breath/attack
# @within asset:mob/0410.heiloang/tick/event/power_breath/attack_loop

# 演出
    particle dust 1 0.941 0.612 4 ~ ~ ~ 0 0 0 0 1 force
    particle firework ~ ~ ~ 0 0 0 0.05 1

# ループ
    scoreboard players remove @s BE.Dummy 1
    execute if score @s BE.Dummy matches 1.. unless entity @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,distance=..2] positioned ^ ^ ^1 run function asset:mob/0410.heiloang/tick/event/power_breath/attack_loop
