#> asset:effect/0017.slowness/modifier/add.m
#
# マクロで補正を付与する
#
# @input args:
#   Val : float
# @within function asset:effect/0017.slowness/modifier/add

# 補正を付与
    $attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-001100000000 "17.Speed" $(Val) multiply
