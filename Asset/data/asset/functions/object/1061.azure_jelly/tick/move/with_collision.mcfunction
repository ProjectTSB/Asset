#> asset:object/1061.azure_jelly/tick/move/with_collision
#
#
#
# @within function asset:object/1061.azure_jelly/tick/move/check_collision.m

# x
    $execute positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned 0.0 ~ ~ positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^-$(Speed) rotated as @s positioned ^ ^ ^$(Speed) if function asset:object/1061.azure_jelly/predicate/collision run tp @s ~ ~ ~

# y
    $execute positioned ^ ^ ^$(Speed) rotated ~180 ~ positioned ^ ^ ^$(Speed) if function asset:object/1061.azure_jelly/predicate/collision run tp @s ~ ~ ~

# z
    $execute positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned ~ ~ 0.0 positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^-$(Speed) rotated as @s positioned ^ ^ ^$(Speed) if function asset:object/1061.azure_jelly/predicate/collision run tp @s ~ ~ ~
