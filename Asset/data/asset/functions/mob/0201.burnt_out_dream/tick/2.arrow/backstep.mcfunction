#> asset:mob/0201.burnt_out_dream/tick/2.arrow/backstep
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/2.arrow/main

# 数値
    data modify storage lib: Argument.VectorMagnitude set value 1
# 飛ぶ方向
    execute facing entity @p[gamemode=!spectator] eyes rotated ~ ~180 run function lib:motion/
# リセット
    data remove storage lib: Argument
