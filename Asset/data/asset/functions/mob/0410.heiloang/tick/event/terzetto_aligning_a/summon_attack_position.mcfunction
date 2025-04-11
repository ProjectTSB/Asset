#> asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/summon_attack_position
#
# テルツェット・ディザスター
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/attack_main

# 四角
    # 召喚
        execute at @s positioned ^18 ^2 ^-25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligA"]}
        execute at @s positioned ^12 ^2 ^-25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligA"]}
        execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~ 0
        tag @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] remove BE.Temp.Dummy
    # 回転
        execute at @s run tp @s ~ ~ ~ ~90 ~
    # 召喚
        execute at @s positioned ^18 ^2 ^-25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligA"]}
        execute at @s positioned ^12 ^2 ^-25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligA"]}
        execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~ 0
        tag @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] remove BE.Temp.Dummy
    # 回転
        execute at @s run tp @s ~ ~ ~ ~90 ~
    # 召喚
        execute at @s positioned ^18 ^2 ^-25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligA"]}
        execute at @s positioned ^12 ^2 ^-25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligA"]}
        execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~ 0
        tag @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] remove BE.Temp.Dummy
    # 回転
        execute at @s run tp @s ~ ~ ~ ~90 ~
    # 召喚
        execute at @s positioned ^18 ^2 ^-25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligA"]}
        execute at @s positioned ^12 ^2 ^-25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligA"]}
        execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~ 0
        tag @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] remove BE.Temp.Dummy
    # 回転戻す
        tp @s ~ ~ ~ ~ ~

# 交差
    # 回転
        execute at @s run tp @s ~ ~ ~ ~45 ~
    # 召喚
        execute at @s positioned ^6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligB"]}
        execute at @s positioned ^ ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligB"]}
        execute at @s positioned ^-6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligB"]}
        execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~180 0
        tag @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] remove BE.Temp.Dummy
    # 回転
        execute at @s run tp @s ~ ~ ~ ~-90 ~
    # 召喚
        execute at @s positioned ^6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligB"]}
        execute at @s positioned ^ ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligB"]}
        execute at @s positioned ^-6 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:350,Tags:["BE.Temp.AttackPosition","BE.Temp.Dummy","BE.Temp.Blitz.AligB"]}
        execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~180 0
        tag @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,tag=BE.Temp.Dummy] remove BE.Temp.Dummy
    # 回転戻す
        tp @s ~ ~ ~ ~ ~
