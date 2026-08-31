#> asset:effect/0386.pk_insight/modifier/add
#
#
#
# @within function asset:effect/0386.pk_insight/**

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,386,0]
    data modify storage api: Argument.Amount set value -0.7d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add

# 移動速度
    attribute @s generic.movement_speed modifier add 1-0-3-0-386 "386.pk_insight" -0.5 multiply_base
