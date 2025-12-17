#> asset:object/1153.flame_butterfly/tick/move/with_collision.m
#
# @input args:
#   Speed : float 移動量の半分
# @within function asset:object/1153.flame_butterfly/tick/move/chase_enemy/move/chase_enemy/

# x
    $execute positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned 0.0 ~ ~ positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^-$(Speed) rotated as @s positioned ^ ^ ^$(Speed) if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~

# y
    $execute positioned ^ ^ ^$(Speed) rotated ~180 ~ positioned ^ ^ ^$(Speed) if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~

# z
    $execute positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned ~ ~ 0.0 positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^-$(Speed) rotated as @s positioned ^ ^ ^$(Speed) if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~
