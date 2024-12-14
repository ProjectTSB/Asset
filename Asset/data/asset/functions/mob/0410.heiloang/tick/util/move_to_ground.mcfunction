#> asset:mob/0410.heiloang/tick/util/move_to_ground
#
# 汎用処理 接地
#
# @within asset:mob/0410.heiloang/tick/event/**

# 接地
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.Ground"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.Ground] run scoreboard players set @s BE.Counter 20
    execute as @e[type=area_effect_cloud,tag=BE.Temp.Ground] at @s align y run tp @s ~ ~ ~
    execute as @e[type=area_effect_cloud,tag=BE.Temp.Ground] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground_loop
    execute positioned as @e[type=area_effect_cloud,tag=BE.Temp.Ground] align y run tp @s ~ ~-0.4 ~
    kill @e[type=area_effect_cloud,tag=BE.Temp.Ground]
