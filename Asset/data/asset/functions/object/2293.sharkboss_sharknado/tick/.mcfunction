#> asset:object/2293.sharkboss_sharknado/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2293/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# 回転させる
    tp @s ~ ~ ~ ~45 ~
# scale変更
    execute if score @s General.Object.Tick matches 3 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 3 run data modify entity @s interpolation_duration set value 8
    execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.scale set value [5f,7f,5f]
    #execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.translation set value [0f,0f,0f]
    execute if score @s General.Object.Tick matches 11 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 11 run data modify entity @s interpolation_duration set value 3
    execute if score @s General.Object.Tick matches 11 run data modify entity @s transformation.scale set value [9.5f,7.5f,9.5f]

    execute if score @s General.Object.Tick matches 14 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 14 run data modify entity @s interpolation_duration set value 2
    execute if score @s General.Object.Tick matches 14 run data modify entity @s transformation.scale set value [10f,8f,10f]

    execute if score @s General.Object.Tick matches 16 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 16 run data modify entity @s interpolation_duration set value 36
    execute if score @s General.Object.Tick matches 16 run data modify entity @s transformation.scale set value [12f,9f,12f]

    #execute if score @s General.Object.Tick matches 36 run data modify entity @s start_interpolation set value 0
    #execute if score @s General.Object.Tick matches 36 run data modify entity @s interpolation_duration set value 3
    #execute if score @s General.Object.Tick matches 36 run data modify entity @s transformation.scale set value [9f,7f,9f]

    execute if score @s General.Object.Tick matches 52 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 52 run data modify entity @s interpolation_duration set value 3
    execute if score @s General.Object.Tick matches 52 run data modify entity @s transformation.scale set value [0f,17f,0f]
    #execute if score @s General.Object.Tick matches 13 run data modify entity @s start_interpolation set value 0
    #execute if score @s General.Object.Tick matches 13 run data modify entity @s interpolation_duration set value 10
    #execute if score @s General.Object.Tick matches 13 run data modify entity @s transformation.scale set value [12f,14f,12f]

# 演出
    execute if score @s General.Object.Tick matches 11..18 run particle explosion ~ ~ ~ 2 0 2 4 4 normal
    execute if score @s General.Object.Tick matches 12..35 run particle minecraft:splash ~ ~7.5 ~ 1 5 1 1 10 normal
    execute if score @s General.Object.Tick matches 12..35 run particle minecraft:block cyan_stained_glass ~ ~7.5 ~ 1 5 1 10 10
    execute if score @s General.Object.Tick matches 12..35 run particle minecraft:block water ~ ~7.5 ~ 1 5 1 10 10
    execute if score @s General.Object.Tick matches 43..56 run particle gust ~ ~4.5 ~ 1.2 5 1.2 1 8

# 消滅処理
    kill @s[scores={General.Object.Tick=56..}]
