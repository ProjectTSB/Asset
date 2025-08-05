#> asset:mob/0202.hunters_dream/tick/skill/arrow/backstep
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/skill/arrow/

# 数値
    data modify storage lib: Argument.VectorMagnitude set value 1
# 飛ぶ方向
    execute facing entity @p[gamemode=!spectator] eyes rotated ~ ~180 run function lib:motion/
# リセット
    data remove storage lib: Argument
