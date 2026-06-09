#> asset:artifact/0101.grimoire/trigger/balletfire
#
# 弾道
#
# @within function asset:artifact/0101.grimoire/trigger/3.main
# @within function asset:artifact/0101.grimoire/trigger/balletfire

    particle minecraft:dust 1 0 0 1
    execute unless block ~ ~ ~ #lib:no_collision/ run return run function asset:artifact/0101.grimoire/trigger/fire
    execute unless entity @s[distance=..10] run return run function asset:artifact/0101.grimoire/trigger/fire
    execute at @e[tag=Enemy,distance=..2,sort=nearest,limit=1] run return run function asset:artifact/0101.grimoire/trigger/fire
    execute positioned ^ ^ ^0.5 run function asset:artifact/0101.grimoire/trigger/balletfire
