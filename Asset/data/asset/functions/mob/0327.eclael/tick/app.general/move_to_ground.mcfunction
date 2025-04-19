#> asset:mob/0327.eclael/tick/app.general/move_to_ground
#
# 汎用処理 接地
#
# @within asset:mob/0327.eclael/tick/**

# 接地
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["93.Temp.Ground"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.Ground,distance=..80] run scoreboard players set @s 93.TempCount 20
    execute as @e[type=area_effect_cloud,tag=93.Temp.Ground,distance=..80] at @s align y run tp @s ~ ~ ~
    execute as @e[type=area_effect_cloud,tag=93.Temp.Ground,distance=..80] at @s run function asset:mob/0327.eclael/tick/app.general/move_to_ground_loop
    execute positioned as @e[type=area_effect_cloud,tag=93.Temp.Ground,distance=..80] align y run tp @s ~ ~-0.4 ~
    kill @e[type=area_effect_cloud,tag=93.Temp.Ground,distance=..80]
