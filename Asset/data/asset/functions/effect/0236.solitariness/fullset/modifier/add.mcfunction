#> asset:effect/0236.solitariness/fullset/modifier/add
#
#
#
# @within function asset:effect/0236.solitariness/fullset/passive

# 移動速度
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-014f00000000 "236.solitariness" 0.40 multiply_base
# MP回復
    data modify storage api: Argument.UUID set value [I;1,3,236,0]
    data modify storage api: Argument.Amount set value 0.35
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add
