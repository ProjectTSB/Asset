#> asset:mob/0410.heiloang/tick/event/heil_disaster/attack_ice
#
# ヘイルディザスター
#
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 召喚
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=4] run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_ice_burst
