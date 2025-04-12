#> asset:object/1139.simple_grenade/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1139/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雪玉消滅か時間経過で爆発
    execute unless predicate lib:is_vehicle run function asset:object/1139.simple_grenade/tick/boom
    execute if score @s General.Object.Tick matches 60.. if entity @s run function asset:object/1139.simple_grenade/tick/boom
