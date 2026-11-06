#> asset:artifact/0837.the_world_knife/trigger/find_target/by_ray
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/find_target/*

execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run return run tag @s add N9.TargetCandidate
execute positioned ^ ^ ^0.25 if entity @s[distance=..5] run function asset:artifact/0837.the_world_knife/trigger/find_target/by_ray
