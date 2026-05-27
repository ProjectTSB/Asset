#> asset:object/2224.bee_bomb/tick/line
#
#
#
# @within function
#    asset:object/2224.bee_bomb/tick/
#    asset:object/2224.bee_bomb/tick/line

particle minecraft:dust 1 0 0 0.3 ~ ~ ~ 0 0 0 0 1
execute positioned ^ ^ ^0.5 if block ^ ^ ^ #lib:no_collision if entity @s[distance=..20] run function asset:object/2224.bee_bomb/tick/line
