#> asset:mob/0201.burnt_out_dream/tick/3.step/step
#
#
#
# @within function asset:mob/0201.burnt_out_dream/tick/3.step/main

# 数値
    data modify storage lib: Argument.VectorMagnitude set value 2
# 飛ぶ方向
    execute facing entity @p[gamemode=!spectator] eyes rotated ~90 ~90 run function lib:motion/
# リセット
    data remove storage lib: Argument
