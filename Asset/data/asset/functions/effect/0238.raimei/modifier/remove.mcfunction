#> asset:effect/0238.raimei/modifier/remove
#
#
#
# @within function
#   asset:effect/0238.raimei/end/
#   asset:effect/0238.raimei/remove/

# 移動速度 (multiply_base)
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00ee00000000

# 跳躍と採掘速度上昇
    effect clear @s jump_boost
    effect clear @s haste
