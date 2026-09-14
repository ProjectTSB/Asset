#> asset:effect/0389.collapsed_insight/modifier/add
#
#
#
# @within function asset:effect/0389.collapsed_insight/given/

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,389,0]
    data modify storage api: Argument.Amount set value -0.3d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add
