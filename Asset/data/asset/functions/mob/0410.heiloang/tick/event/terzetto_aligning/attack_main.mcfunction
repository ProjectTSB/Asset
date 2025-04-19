#> asset:mob/0410.heiloang/tick/event/terzetto_aligning/attack_main
#
# テルツェット・アライニング
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_aligning/

# 攻撃位置設置
    execute if score @s BE.EventTimer matches 88 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/summon_attack_position
# 予告魔法陣
    execute if score @s BE.EventTimer matches 88 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition] positioned as @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/prediction

# 攻撃
    execute if score @s BE.EventTimer matches 370 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/attack
    execute if score @s BE.EventTimer matches 390 run summon lightning_bolt ~ ~100 ~
    execute if score @s BE.EventTimer matches 390 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
