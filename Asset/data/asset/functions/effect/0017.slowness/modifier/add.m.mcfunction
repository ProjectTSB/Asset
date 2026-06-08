#> asset:effect/0017.slowness/modifier/add.m
#
# マクロで補正を付与する
#
# @input args:
#   Val : float
# @within function asset:effect/0017.slowness/modifier/add

# 補正を付与
    $attribute @s generic.movement_speed modifier add $(UUID) "$(ID).Speed" $(Val) multiply
