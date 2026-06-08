#> asset:object/1063.magic_circle_of_rebirth/tick/turn/search.m
# @input args
#   Min : int
#   Radius : int
#   Diameter : int
# @within function asset:object/1063.magic_circle_of_rebirth/tick/turn/

$execute positioned ^ ^ ^$(Radius) as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..$(Radius),sort=nearest] at @p[tag=TJ.This] unless entity @s[distance=..$(Min)] unless entity @e[type=#lib:living_without_player,tag=TJ.Target,tag=!Uninterferable,distance=..$(Diameter),limit=1] run tag @s add TJ.Target
