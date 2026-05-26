#> asset:artifact/0122.lunatic_lay/trigger/find_through_target/check_through
#
#
#
# @within function asset:artifact/0122.lunatic_lay/trigger/find_through_target/*

execute positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run return run tag @s add 3E.Hit
execute positioned ^ ^ ^0.2 if block ^ ^ ^ #lib:no_collision/ run function asset:artifact/0122.lunatic_lay/trigger/find_through_target/check_through
