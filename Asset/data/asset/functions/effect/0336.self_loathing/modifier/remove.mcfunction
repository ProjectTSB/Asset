#> asset:effect/0336.self_loathing/modifier/remove
#
#
#
# @within function asset:effect/0336.self_loathing/**/**

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-015000000000

# MP回復低下
    data modify storage api: Argument.UUID set value [I;1,3,336,0]
    function api:modifier/mp_regen/remove

# 攻撃力低下
    data modify storage api: Argument.UUID set value [I;1,3,336,0]
    function api:modifier/attack/base/remove
