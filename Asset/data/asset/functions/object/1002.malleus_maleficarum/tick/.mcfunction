#> asset:object/1002.malleus_maleficarum/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1002/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# vfx
    particle soul_fire_flame ~ ~ ~ 0 0 0 0 1

# Vehicleがいなければヒット処理
    execute unless predicate lib:is_vehicle at @s run function asset:object/1002.malleus_maleficarum/tick/hit

# セーフティ
    execute if score @s General.Object.Tick matches 60.. run function asset:object/1002.malleus_maleficarum/tick/hit
