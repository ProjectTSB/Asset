#> asset:effect/0016.kb_resist_buff/modifier/add.m
# @input args Amount : float
# @within function asset:effect/0016.kb_resist_buff/modifier/add

$attribute @s generic.knockback_resistance modifier add 1-0-3-0-1000000000 "G.KBResist" $(Amount) add
