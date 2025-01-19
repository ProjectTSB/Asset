#> asset:mob/0410.heiloang/tick/event/terzetto_aligning/summon_attack_position
#
# テルツェット・ディザスター
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_aligning/attack_main

# 召喚
    execute positioned ^12 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BE.Temp.AttackPosition"]}
    execute positioned ^6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BE.Temp.AttackPosition"]}
    execute positioned ^ ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BE.Temp.AttackPosition"]}
    execute positioned ^-6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BE.Temp.AttackPosition"]}
    execute positioned ^-12 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BE.Temp.AttackPosition"]}

# 安置を作る
    kill @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1]

# 残り召喚
    execute positioned ^18 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BE.Temp.AttackPosition"]}
    execute positioned ^-18 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:290,Tags:["BE.Temp.AttackPosition"]}
