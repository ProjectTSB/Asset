#> asset:object/1061.azure_jelly/tick/move/collision/move
#
#
#
# @within function asset:object/1061.azure_jelly/tick/move/collision/calc_pos.m

# X軸判定
    $execute if block ~$(X) ~ ~ #lib:no_collision run tp @s ~$(X) ~ ~

# Y軸判定
    $execute at @s if block ~ ~$(Y) ~ #lib:no_collision run tp @s ~ ~$(Y) ~

# Z軸判定
    $execute at @s if block ~ ~ ~$(Z) #lib:no_collision run tp @s ~ ~ ~$(Z)
