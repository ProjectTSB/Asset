#> asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/attack_main
#
# テルツェット・アライニング
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/

# 攻撃位置設置
    execute if score @s BE.EventTimer matches 40 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/summon_attack_position
    execute if score @s BE.EventTimer matches 40 if predicate api:global_vars/difficulty/max/normal as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/prediction_line_0
    execute if score @s BE.EventTimer matches 120 if predicate api:global_vars/difficulty/max/normal as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/prediction_line_1
    execute if score @s BE.EventTimer matches 120 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/prediction_line

# 十字
    # 予告魔法陣
        execute if score @s BE.EventTimer matches 40 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Blitz.AligB] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/prediction_a
    # 攻撃
        execute if score @s BE.EventTimer matches 250 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Blitz.AligB] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/attack
        execute if score @s BE.EventTimer matches 270 run summon lightning_bolt ~ ~100 ~
        execute if score @s BE.EventTimer matches 270 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7

# 四角
    # 予告魔法陣
        execute if score @s BE.EventTimer matches 100 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Blitz.AligA] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/prediction_a
    # 攻撃
        execute if score @s BE.EventTimer matches 310 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Blitz.AligA] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/attack
        execute if score @s BE.EventTimer matches 330 run summon lightning_bolt ~ ~100 ~
        execute if score @s BE.EventTimer matches 330 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7

# 終了
    execute if score @s BE.EventTimer matches 380 run kill @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition]
