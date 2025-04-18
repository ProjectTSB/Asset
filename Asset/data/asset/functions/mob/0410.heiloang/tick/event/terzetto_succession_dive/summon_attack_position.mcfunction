#> asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/summon_attack_position
#
# テルツェット・サクセッション
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/

# 攻撃判定用AEC召喚
    summon area_effect_cloud ^-13 ^3 ^28 {Duration:300,Tags:["BE.Temp.Dive.PositionA"]}
    summon area_effect_cloud ^13 ^3 ^28 {Duration:300,Tags:["BE.Temp.Dive.PositionA"]}
    kill @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionA,sort=random,limit=1]
    execute as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionA] positioned as @s run tp @s ~ ~ ~ ~-180 0

# 回転
    tp @s ~ ~ ~ ~90 ~
    execute at @s run summon area_effect_cloud ^-13 ^3 ^28 {Duration:300,Tags:["BE.Temp.Dive.PositionB","BE.Temp.Dummy"]}
    execute at @s run summon area_effect_cloud ^13 ^3 ^28 {Duration:300,Tags:["BE.Temp.Dive.PositionB","BE.Temp.Dummy"]}
    execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionB,tag=BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~-180 0
    execute at @s run tp @s ~ ~ ~ ~180 ~
    execute at @s run summon area_effect_cloud ^-13 ^3 ^28 {Duration:300,Tags:["BE.Temp.Dive.PositionB"]}
    execute at @s run summon area_effect_cloud ^13 ^3 ^28 {Duration:300,Tags:["BE.Temp.Dive.PositionB"]}
    execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionB,tag=!BE.Temp.Dummy] positioned as @s run tp @s ~ ~ ~ ~-180 0
    kill @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionB,sort=random,limit=3]

# 回転
    execute at @s run tp @s ~ ~ ~ ~-90 ~
    execute at @s run summon area_effect_cloud ^-13 ^3 ^28 {Duration:300,Tags:["BE.Temp.Dive.PositionC"]}
    execute at @s run summon area_effect_cloud ^13 ^3 ^28 {Duration:300,Tags:["BE.Temp.Dive.PositionC"]}
    # A地点の対面を削除
        execute at @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionA] positioned ^ ^ ^56 run kill @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionC,sort=nearest,limit=1]
    execute at @s as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionC] positioned as @s run tp @s ~ ~ ~ ~-180 0

# 回転戻す
    tp @s ~ ~ ~ ~ ~
