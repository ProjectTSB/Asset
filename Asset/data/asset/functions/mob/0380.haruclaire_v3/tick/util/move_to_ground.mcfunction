#> asset:mob/0380.haruclaire_v3/tick/util/move_to_ground
#
# 汎用処理 接地
#
# @within asset:mob/0380.haruclaire_v3/tick/event/**

# 接地
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["AK.Temp.Ground"]}
    execute as @e[type=area_effect_cloud,tag=AK.Temp.Ground] run scoreboard players set @s AK.Counter 20
    execute as @e[type=area_effect_cloud,tag=AK.Temp.Ground] at @s align y run tp @s ~ ~ ~
    execute as @e[type=area_effect_cloud,tag=AK.Temp.Ground] at @s run function asset:mob/0380.haruclaire_v3/tick/util/move_to_ground_loop
    execute positioned as @e[type=area_effect_cloud,tag=AK.Temp.Ground] align y run tp @s ~ ~-0.4 ~
    kill @e[type=area_effect_cloud,tag=AK.Temp.Ground]
