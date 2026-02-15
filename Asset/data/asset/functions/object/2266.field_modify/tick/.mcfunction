#> asset:object/2266.field_modify/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2266/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if score @s General.Object.Tick matches 3 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.scale set value [15.0f,0.1f,15.0f]

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
