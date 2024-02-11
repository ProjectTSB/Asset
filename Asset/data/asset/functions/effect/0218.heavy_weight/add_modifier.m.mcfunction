#> asset:effect/0218.heavy_weight/add_modifier.m
# @within function asset:effect/0218.heavy_weight/add_modifier

# ノックバック耐性 +1*N
    $attribute @s generic.knockback_resistance modifier add 1-0-3-0-da00000000 "62.HeavyWeight" $(KBVal) add
# 移動速度 -30*N%
    $attribute @s generic.movement_speed modifier add 1-0-3-0-da00000000 "62.HeavyWeight" $(MoveVal) multiply_base
