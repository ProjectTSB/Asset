#> asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/summon_attack_pos
#
# アイススピナー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/

# 攻撃位置召喚
    summon area_effect_cloud ^ ^ ^ {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
