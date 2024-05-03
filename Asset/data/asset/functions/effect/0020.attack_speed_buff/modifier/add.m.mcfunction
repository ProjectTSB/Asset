#> asset:effect/0020.attack_speed_buff/modifier/add.m
# @input args Amount : float
# @within function asset:effect/0020.attack_speed_buff/modifier/add

$attribute @s generic.attack_speed modifier add 1-0-3-0-1400000000 "K.AttackSpeed" $(Amount) add
