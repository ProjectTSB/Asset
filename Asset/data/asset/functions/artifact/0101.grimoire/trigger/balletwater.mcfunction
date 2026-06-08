#> asset:artifact/0101.grimoire/trigger/balletwater
#
# 弾道
#
# @within function asset:artifact/0101.grimoire/trigger/3.main
# @within function asset:artifact/0101.grimoire/trigger/balletwater

    particle minecraft:dust 0.133 0 1 1
    execute unless block ~ ~ ~ #lib:no_collision/ run return run function asset:artifact/0101.grimoire/trigger/water
    execute unless entity @s[distance=..10] run return run function asset:artifact/0101.grimoire/trigger/water
    execute if entity @e[tag=Enemy,distance=..2] run return run function asset:artifact/0101.grimoire/trigger/water
    execute positioned ^ ^ ^0.5 run function asset:artifact/0101.grimoire/trigger/balletwater
