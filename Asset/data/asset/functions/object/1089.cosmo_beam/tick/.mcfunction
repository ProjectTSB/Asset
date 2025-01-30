#> asset:object/1089.cosmo_beam/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1089/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

    execute if score @s General.Object.Tick matches 5 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 5 run data modify entity @s transformation.scale set value [0.1f,200f,0.1f]

# レーザー出る
    execute if score @s General.Object.Tick matches 50 run data modify entity @s interpolation_duration set value 3
    execute if score @s General.Object.Tick matches 50 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 50 run data modify entity @s transformation.scale set value [19f,200f,19f]
    execute if score @s General.Object.Tick matches 50 run playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 1
    execute if score @s General.Object.Tick matches 50..60 run function asset:object/1089.cosmo_beam/tick/shot

    execute if score @s General.Object.Tick matches 65 run data modify entity @s interpolation_duration set value 30
    execute if score @s General.Object.Tick matches 65 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 65 run data modify entity @s transformation.scale set value [0f,200f,0f]

# 消滅処理
    kill @s[scores={General.Object.Tick=95..}]
