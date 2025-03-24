#> asset:object/1116.ember_object/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1116/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# レーザーでてくる
    execute if score @s General.Object.Tick matches 5 run data modify entity @s interpolation_duration set value 20
    execute if score @s General.Object.Tick matches 5 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 5 run data modify entity @s transformation.scale set value [0.5f,60f,0.5f]

# 火が上がる
    execute if score @s General.Object.Tick matches 55 run function asset:object/1116.ember_object/tick/summon

# レーザー出る
    execute if score @s General.Object.Tick matches 60 run data modify entity @s interpolation_duration set value 3
    execute if score @s General.Object.Tick matches 60 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 60 run data modify entity @s transformation.scale set value [3f,65f,3f]
    execute if score @s General.Object.Tick matches 60 run function asset:object/1116.ember_object/tick/damage

# 縮む
    execute if score @s General.Object.Tick matches 65 run data modify entity @s interpolation_duration set value 30
    execute if score @s General.Object.Tick matches 65 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 65 run data modify entity @s transformation.scale set value [0f,65f,0f]

# 消滅処理
    kill @s[scores={General.Object.Tick=95..}]
