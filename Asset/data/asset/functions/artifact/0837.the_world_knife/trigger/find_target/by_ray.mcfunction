#> asset:artifact/0837.the_world_knife/trigger/find_target/by_ray
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/find_target/*

execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] positioned ~-1 ~-1 ~-1 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] run return run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] add N9.Target
execute positioned ^ ^ ^0.25 if entity @s[distance=..5] run function asset:artifact/0837.the_world_knife/trigger/find_target/by_ray
