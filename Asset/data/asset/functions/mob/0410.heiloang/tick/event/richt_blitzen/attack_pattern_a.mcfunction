#> asset:mob/0410.heiloang/tick/event/richt_blitzen/attack_pattern_a
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/

# 攻撃位置予告
        execute if score @s BE.EventTimer matches 23 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/particle_before

# 攻撃
    # 1
        execute if score @s BE.EventTimer matches 110 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_0
        execute if score @s BE.EventTimer matches 130 run summon lightning_bolt ~ ~100 ~
        execute if score @s BE.EventTimer matches 130 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
    # 2
        execute if score @s BE.EventTimer matches 115 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_circle_1
        execute if score @s BE.EventTimer matches 135 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_1
        execute if score @s BE.EventTimer matches 155 run summon lightning_bolt ~ ~100 ~
        execute if score @s BE.EventTimer matches 155 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
    # 3
        execute if score @s BE.EventTimer matches 140 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_circle_0
        execute if score @s BE.EventTimer matches 160 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_0
        execute if score @s BE.EventTimer matches 180 run summon lightning_bolt ~ ~100 ~
        execute if score @s BE.EventTimer matches 180 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
