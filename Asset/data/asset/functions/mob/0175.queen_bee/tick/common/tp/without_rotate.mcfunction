#> asset:mob/0175.queen_bee/tick/common/tp/without_rotate
#
#
#
# @within function asset:mob/0175.queen_bee/tick/**

# 前進
    tp @s ~ ~ ~ ~ ~

# displayの調整
    execute on passengers positioned as @s run tp @s ~ ~ ~
