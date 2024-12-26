#> asset:object/2032.pumpkin_mirage/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2032/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# display表示
    execute if entity @s[scores={General.Object.Tick=4}] run data modify entity @s transformation.scale set value [0.6f,0.6f,0.6f]

# 消滅処理
    kill @s[scores={General.Object.Tick=10..}]
