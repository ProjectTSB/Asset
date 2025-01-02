#> asset:mob/0201.burnt_out_dream/tick/1.sword/backstep
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/1.sword/main

# 数値
    data modify storage lib: Argument.VectorMagnitude set value 1.2
# 飛ぶ方向
    execute facing entity @p[gamemode=!spectator] eyes rotated ~ ~180 run function lib:motion/
# リセット
    data remove storage lib: Argument
