#> asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos
#
# アイスウォール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos_start

# 攻撃位置決定
    execute if predicate api:global_vars/difficulty/min/hard run summon area_effect_cloud ^-15 ^ ^3 {Tags:["AK.Temp.AttackPosition","AK.Temp.Start"],Duration:200}
    execute if predicate api:global_vars/difficulty/min/normal run summon area_effect_cloud ^-10 ^ ^3 {Tags:["AK.Temp.AttackPosition","AK.Temp.Start"],Duration:200}
    summon area_effect_cloud ^-5 ^ ^1.5 {Tags:["AK.Temp.AttackPosition","AK.Temp.Start"],Duration:200}
    summon area_effect_cloud ^ ^ ^ {Tags:["AK.Temp.AttackPosition","AK.Temp.Start"],Duration:200}
    summon area_effect_cloud ^5 ^ ^1.5 {Tags:["AK.Temp.AttackPosition","AK.Temp.Start"],Duration:200}
    execute if predicate api:global_vars/difficulty/min/normal run summon area_effect_cloud ^10 ^ ^3 {Tags:["AK.Temp.AttackPosition","AK.Temp.Start"],Duration:200}
    execute if predicate api:global_vars/difficulty/min/hard run summon area_effect_cloud ^15 ^ ^3 {Tags:["AK.Temp.AttackPosition","AK.Temp.Start"],Duration:200}
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=AK.Temp.Start] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=AK.Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ 0
    tag @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=AK.Temp.Start] remove AK.Temp.Start
