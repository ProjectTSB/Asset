#> asset:effect/0335.solitariness/modifier/remove
#
#
#
# @within function asset:effect/0335.solitariness/**/**

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-014f00000000

# MP回復
    data modify storage api: Argument.UUID set value [I;1,3,335,0]
    function api:modifier/mp_regen/remove
