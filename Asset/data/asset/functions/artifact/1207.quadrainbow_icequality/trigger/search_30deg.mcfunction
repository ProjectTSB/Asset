#> asset:artifact/1207.quadrainbow_icequality/trigger/search_30deg
#
# 
#
# @within function asset:artifact/1207.quadrainbow_icequality/trigger/select_target

execute unless entity @e[type=#lib:living,tag=XJ.Target,distance=..5,sort=nearest] run tag @s add XJ.Target
execute facing entity @s feet positioned ^ ^ ^3 rotated as @p[tag=this] rotated ~30 ~ positioned ^-4 ^ ^ unless entity @p[tag=this,distance=..5] run tag @s remove XJ.Target
execute facing entity @s feet positioned ^ ^ ^3 rotated as @p[tag=this] rotated ~-30 ~ positioned ^4 ^ ^ unless entity @p[tag=this,distance=..5] run tag @s remove XJ.Target
