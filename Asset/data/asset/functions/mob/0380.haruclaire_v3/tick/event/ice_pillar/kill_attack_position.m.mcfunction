#> asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/kill_attack_position.m
#
# アイスピラー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/summon_attack_position

# キル
    $kill @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..20,sort=random,limit=$(Count)]
