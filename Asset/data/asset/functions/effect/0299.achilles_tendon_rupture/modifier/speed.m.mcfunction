#> asset:effect/0299.achilles_tendon_rupture/modifier/speed.m
# @input args Speed : double
# @within function asset:effect/0299.achilles_tendon_rupture/modifier/add

$attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-012b00000000 "299.MovementSpeed" $(Speed) multiply
