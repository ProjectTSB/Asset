#> asset:effect/0117.move_speed_debuff/modifier/add.m
# @input args Amount : float
# @within function asset:effect/0117.move_speed_debuff/modifier/add

$attribute @s generic.movement_speed modifier add 1-0-3-0-7500000000 "39.MoveSpeed" $(Amount) add
