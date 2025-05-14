#> asset:object/2002.lighting_fast/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2002/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 2Tick目に見た目を表示
    execute if score @s General.Object.Tick matches 2 run data modify entity @s transformation.scale set value [3f,0.1f,60f]
    execute if score @s General.Object.Tick matches 2 run data modify entity @s teleport_duration set value 1

# 近くのプレイヤーにゆっくりと近づく
    execute if score @s General.Object.Tick matches 2.. facing entity @p[tag=!PlayerShouldInvulnerable,distance=..30] feet positioned ^ ^ ^0.1 rotated as @s run tp @s ~ ~ ~ ~ ~
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Object.Tick matches 2.. facing entity @p[tag=!PlayerShouldInvulnerable,distance=..30] feet positioned ^ ^ ^0.1 rotated as @s run tp @s ~ ~ ~ ~ ~

# 発動処理
    execute if score @s General.Object.Tick matches 30.. run function asset:object/2002.lighting_fast/tick/cast
