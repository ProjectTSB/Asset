#> asset:mob/0380.haruclaire_v3/tick/event/ice_siege/summon_attack_pos_inverse
#
# アイスシージ
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_siege/summon_attack_pos

# 攻撃位置決定
    execute rotated ~ ~ run summon area_effect_cloud ^ ^ ^7 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute rotated ~-60 ~ run summon area_effect_cloud ^ ^ ^7 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute rotated ~-120 ~ run summon area_effect_cloud ^ ^ ^7 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute rotated ~-180 ~ run summon area_effect_cloud ^ ^ ^7 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute rotated ~-240 ~ run summon area_effect_cloud ^ ^ ^7 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute rotated ~-300 ~ run summon area_effect_cloud ^ ^ ^7 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition] at @s facing entity @p[tag=AK.MainTarget] feet run tp @s ~ ~ ~ ~ 0
