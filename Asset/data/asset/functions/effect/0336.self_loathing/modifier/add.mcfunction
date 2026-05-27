#> asset:effect/0336.self_loathing/modifier/add
#
#
#
# @within function asset:effect/0336.self_loathing/**/**

# 移動速度
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-015000000000 "336.self_loathing" -0.5 multiply_base

# MP回復低下
    data modify storage api: Argument.UUID set value [I;1,3,336,0]
    data modify storage api: Argument.Amount set value -2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 攻撃力低下
    # data modify storage api: Argument.UUID set value [I;1,3,336,0]
    # data modify storage api: Argument.Amount set value -1
    # data modify storage api: Argument.Operation set value "multiply_base"
    # function api:modifier/attack/base/add
