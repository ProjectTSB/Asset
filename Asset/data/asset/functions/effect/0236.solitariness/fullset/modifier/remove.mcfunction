#> asset:effect/0236.solitariness/fullset/modifier/remove
#
#
#
# @within function
#   asset:effect/0236.solitariness/fullset/passive
#   asset:effect/0236.solitariness/remove/
#   asset:effect/0236.solitariness/re-given/

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-014f00000000
# MP回復
    data modify storage api: Argument.UUID set value [I;1,3,236,0]
    function api:modifier/mp_regen/remove
