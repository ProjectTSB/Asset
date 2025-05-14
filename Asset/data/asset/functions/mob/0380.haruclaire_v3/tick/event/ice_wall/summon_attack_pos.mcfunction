#> asset:mob/0380.haruclaire_v3/tick/event/ice_wall/summon_attack_pos
#
# アイスウォール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_wall/

# 攻撃位置決定
    execute if predicate api:global_vars/difficulty/min/3_blessless run summon area_effect_cloud ^-15 ^ ^3 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute if predicate api:global_vars/difficulty/min/normal run summon area_effect_cloud ^-10 ^ ^3 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    summon area_effect_cloud ^-5 ^ ^1.5 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    summon area_effect_cloud ^ ^ ^ {Tags:["AK.Temp.AttackPosition"],Duration:200}
    summon area_effect_cloud ^5 ^ ^1.5 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute if predicate api:global_vars/difficulty/min/normal run summon area_effect_cloud ^10 ^ ^3 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute if predicate api:global_vars/difficulty/min/3_blessless run summon area_effect_cloud ^15 ^ ^3 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] positioned as @s run tp @s ~ ~ ~ ~ 0
