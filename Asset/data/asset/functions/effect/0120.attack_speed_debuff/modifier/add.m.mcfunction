#> asset:effect/0120.attack_speed_debuff/modifier/add.m
# @input args Amount : float
# @within function asset:effect/0120.attack_speed_debuff/modifier/add

$attribute @s generic.attack_speed modifier add 1-0-3-0-7800000000 "3C.MaxHealth" $(Amount) add
