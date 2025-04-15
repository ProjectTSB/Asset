#> asset:object/1141.big_water_balloon/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1141/tick

# パーティクル
    particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0.05 10
    particle minecraft:dust 0 0.667 1 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    particle minecraft:crit ~ ~ ~ 0 0 0 0.05 1 force @a[distance=..32]

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# Super
    function asset:object/super.tick

# フェイルセーフ兼射程
    execute if score @s General.Object.Tick matches 60.. run function asset:object/call.m {method:hit}
