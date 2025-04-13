#> asset:mob/0380.haruclaire_v3/tick/event/ice_pillar_duo/kill_attack_position.m
#
# アイスピラー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_pillar_duo/summon_attack_position

# キル
    $kill @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=$(Count)]
