#> asset:effect/0621.loyalty_shield/modifier/remove
#
#
#
# @within function
#   asset:effect/0621.loyalty_shield/re-given/
#   asset:effect/0621.loyalty_shield/remove/
#   asset:effect/0621.loyalty_shield/end/

# 防御力上昇を削除
    data modify storage api: Argument.UUID set value [I;1,3,621,0]
    function api:modifier/defense/base/remove
