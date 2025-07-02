#> asset:effect/0621.loyalty_shield/modifier/add
#
#
#
# @within function
#   asset:effect/0621.loyalty_shield/given/
#   asset:effect/0621.loyalty_shield/re-given/

# 防御力上昇を付与
    data modify storage api: Argument.UUID set value [I;1,3,621,0]
    data modify storage api: Argument.Amount set value 0.7
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
