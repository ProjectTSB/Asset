#> asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/attack_main
#
# テルツェット・ラグナレク
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/

# 攻撃位置設置
    execute if score @s BE.EventTimer matches 85 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/summon_attack_position_0
# 予告魔法陣
    execute if score @s BE.EventTimer matches 85 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/prediction_0

# 攻撃
    # 1
        execute if score @s BE.EventTimer matches 274 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/attack
        execute if score @s BE.EventTimer matches 294 run summon lightning_bolt ~ ~100 ~
        execute if score @s BE.EventTimer matches 294 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
    # 2
        execute if score @s BE.EventTimer matches 279 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/summon_attack_position_1
        execute if score @s BE.EventTimer matches 279 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/prediction_1
        execute if score @s BE.EventTimer matches 299 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/attack
        execute if score @s BE.EventTimer matches 319 run summon lightning_bolt ~ ~100 ~
        execute if score @s BE.EventTimer matches 319 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
    # 3
        execute if score @s BE.EventTimer matches 304 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/summon_attack_position_0
        execute if score @s BE.EventTimer matches 304 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/prediction_2
        execute if score @s BE.EventTimer matches 324 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/attack
        execute if score @s BE.EventTimer matches 344 run summon lightning_bolt ~ ~100 ~
        execute if score @s BE.EventTimer matches 344 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
