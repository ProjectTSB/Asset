#> asset:mob/0380.haruclaire_v3/tick/util/move_to_ground
#
# 汎用処理 接地
#
# @within
#   asset:mob/0380.haruclaire_v3/tick/event/**
#   asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor

# 接地
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["AK.Temp.Ground"]}
    execute as @e[type=area_effect_cloud,tag=AK.Temp.Ground,distance=..80] run scoreboard players set @s AK.Counter 20
    execute as @e[type=area_effect_cloud,tag=AK.Temp.Ground,distance=..80] at @s align y run tp @s ~ ~ ~
    execute as @e[type=area_effect_cloud,tag=AK.Temp.Ground,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/move_to_ground_loop
    execute positioned as @e[type=area_effect_cloud,tag=AK.Temp.Ground,distance=..80] align y run tp @s ~ ~-0.4 ~
    kill @e[type=area_effect_cloud,tag=AK.Temp.Ground,distance=..80]
