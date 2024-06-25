#> asset:effect/0215.purification/modifier/add.m
#
# マクロで攻撃速度attributeを付与
#
# @input args
#   EffectValue : double
#
# @within function asset:effect/0215.purification/modifier/add

# 攻撃速度
    $attribute @s generic.attack_speed modifier add 00000001-0000-0003-0000-00d700000000 "215.Purification" $(Value) multiply
