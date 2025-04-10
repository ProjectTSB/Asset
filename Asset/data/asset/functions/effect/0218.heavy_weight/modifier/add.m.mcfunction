#> asset:effect/0218.heavy_weight/modifier/add.m
# @input args
#   KBVal : float
#   MoveVal : float
# @within function asset:effect/0218.heavy_weight/modifier/add

# ノックバック耐性 +0.6*N
    $attribute @s generic.knockback_resistance modifier add 1-0-3-0-da00000000 "62.HeavyWeight" $(KBVal) add
# 移動速度 -15*N%
    $attribute @s generic.movement_speed modifier add 1-0-3-0-da00000000 "62.HeavyWeight" $(MoveVal) multiply_base
