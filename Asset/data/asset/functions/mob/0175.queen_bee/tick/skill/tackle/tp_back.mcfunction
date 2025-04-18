#> asset:mob/0175.queen_bee/tick/skill/tackle/tp_back
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill/tackle/

# 前進
    tp @s ^ ^ ^0.4

# displayの調整
    execute at @s on passengers positioned as @s run tp @s ~ ~ ~ ~ ~
