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
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] at @s facing entity @p[tag=AK.MainTarget,distance=..80] feet run tp @s ~ ~ ~ ~ 0

# ハードではさらに設置
    execute if predicate api:global_vars/difficulty/max/2_hard run return 0
    execute rotated ~30 ~ run summon area_effect_cloud ^ ^ ^12 {Tags:["AK.Temp.AttackPosition","AK.Temp.AttackPosition.Hard"],Duration:200}
    execute rotated ~90 ~ run summon area_effect_cloud ^ ^ ^12 {Tags:["AK.Temp.AttackPosition","AK.Temp.AttackPosition.Hard"],Duration:200}
    execute rotated ~150 ~ run summon area_effect_cloud ^ ^ ^12 {Tags:["AK.Temp.AttackPosition","AK.Temp.AttackPosition.Hard"],Duration:200}
    execute rotated ~210 ~ run summon area_effect_cloud ^ ^ ^12 {Tags:["AK.Temp.AttackPosition","AK.Temp.AttackPosition.Hard"],Duration:200}
    execute rotated ~270 ~ run summon area_effect_cloud ^ ^ ^12 {Tags:["AK.Temp.AttackPosition","AK.Temp.AttackPosition.Hard"],Duration:200}
    execute rotated ~330 ~ run summon area_effect_cloud ^ ^ ^12 {Tags:["AK.Temp.AttackPosition","AK.Temp.AttackPosition.Hard"],Duration:200}
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition.Hard,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition.Hard,distance=..80] at @s facing entity @p[tag=AK.MainTarget,distance=..80] feet run tp @s ~ ~ ~ ~45 0
