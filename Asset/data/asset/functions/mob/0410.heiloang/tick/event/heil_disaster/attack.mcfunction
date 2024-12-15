#> asset:mob/0410.heiloang/tick/event/heil_disaster/attack
#
# ヘイルディザスター
#
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/

# 召喚
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_wind_burst
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_fire_burst
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_ice_burst
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_thunder_burst
