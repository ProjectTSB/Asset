#> asset:effect/0338.jump_spring/tick/sneak
#
#
#
# @within function asset:effect/0338.jump_spring/tick/

tag @s add 9E.Sneak
data modify storage asset:context Stack set value 4

playsound block.piston.contract player @s ~ ~ ~ 0.4 1
