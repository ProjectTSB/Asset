#> asset:effect/0261.gale_blessing/modfier/add.m
#
# 補正を付与する
#
# @input args
#   Value: double
#
# @within function asset:effect/0261.gale_blessing/modfier/add

# 移動速度バフ付与
# 装備時にのみ付与されるエフェクトであるため、multiplyではなくmultiply_base
    $attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-010500000000 "261.Speed" $(Value) multiply_base
