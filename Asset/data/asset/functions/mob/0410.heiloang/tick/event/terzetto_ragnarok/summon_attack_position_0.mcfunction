#> asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/summon_attack_position_0
#
# テルツェット・ラグナレク
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/attack_main

# 召喚
    execute positioned ^18 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:190,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy"]}
    execute positioned ^6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:190,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy"]}
    execute positioned ^-6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:190,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy"]}
    execute positioned ^-18 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:190,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~180 0
    tag @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] remove BE.Temp.Dummy

# 回転
    execute at @s run tp @s ~ ~ ~ ~90 ~

# 召喚
    execute at @s positioned ^12 ^2.1 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:190,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy"]}
    execute at @s positioned ^ ^2.1 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:190,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy"]}
    execute at @s positioned ^-12 ^2.1 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:190,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy"]}
    execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~180 0
    tag @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] remove BE.Temp.Dummy

# 回転戻す
    tp @s ~ ~ ~ ~ ~
