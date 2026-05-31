#> asset:object/2292.sharkboss_tornado/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2292/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# 回転させる
    tp @s ~ ~ ~ ~45 ~
# scale変更
    execute if score @s General.Object.Tick matches 3 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 3 run data modify entity @s interpolation_duration set value 8
    execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.scale set value [3f,5f,3f]
    #execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.translation set value [0f,0f,0f]
    execute if score @s General.Object.Tick matches 11 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 11 run data modify entity @s interpolation_duration set value 3
    execute if score @s General.Object.Tick matches 11 run data modify entity @s transformation.scale set value [7.5f,5.5f,7.5f]

    execute if score @s General.Object.Tick matches 14 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 14 run data modify entity @s interpolation_duration set value 2
    execute if score @s General.Object.Tick matches 14 run data modify entity @s transformation.scale set value [8f,6f,8f]

    execute if score @s General.Object.Tick matches 16 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 16 run data modify entity @s interpolation_duration set value 26
    execute if score @s General.Object.Tick matches 16 run data modify entity @s transformation.scale set value [10f,7f,10f]

    #execute if score @s General.Object.Tick matches 36 run data modify entity @s start_interpolation set value 0
    #execute if score @s General.Object.Tick matches 36 run data modify entity @s interpolation_duration set value 3
    #execute if score @s General.Object.Tick matches 36 run data modify entity @s transformation.scale set value [9f,7f,9f]

    execute if score @s General.Object.Tick matches 42 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 42 run data modify entity @s interpolation_duration set value 3
    execute if score @s General.Object.Tick matches 42 run data modify entity @s transformation.scale set value [0f,15f,0f]
    #execute if score @s General.Object.Tick matches 13 run data modify entity @s start_interpolation set value 0
    #execute if score @s General.Object.Tick matches 13 run data modify entity @s interpolation_duration set value 10
    #execute if score @s General.Object.Tick matches 13 run data modify entity @s transformation.scale set value [12f,14f,12f]

# 演出
    execute if score @s General.Object.Tick matches 11..18 run particle explosion ~ ~ ~ 2 0 2 4 4 normal
    execute if score @s General.Object.Tick matches 12..35 run particle minecraft:splash ~ ~7.5 ~ 1 5 1 1 10 normal
    execute if score @s General.Object.Tick matches 12..35 run particle minecraft:block cyan_stained_glass ~ ~7.5 ~ 1 5 1 10 10
    execute if score @s General.Object.Tick matches 12..35 run particle minecraft:block water ~ ~7.5 ~ 1 5 1 10 10
    execute if score @s General.Object.Tick matches 43..46 run particle gust ~ ~4.5 ~ 0.8 4 0.8 1 8

# 消滅処理
    kill @s[scores={General.Object.Tick=46..}]
