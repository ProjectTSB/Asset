#> asset:object/2266.field_modify/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2266/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute if entity @s[tag=2266.Remove] run scoreboard players add @s 2266.RemoveTimer 1

# 拡大
    execute if score @s General.Object.Tick matches 3 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.scale set value [15.0f,0.1f,15.0f]
    execute if score @s 2266.RemoveTimer matches 3 run data modify entity @s start_interpolation set value -1
    execute if score @s 2266.RemoveTimer matches 3 run data modify entity @s transformation.scale set value [0.0f,0.1f,0.0f]

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
    kill @s[scores={2266.RemoveTimer=10..}]
