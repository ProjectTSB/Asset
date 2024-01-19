#> asset:effect/0220.sinking/given/
#
#
#
# @within function asset:effect/0220.sinking/_/given

# 攻撃-50％
    data modify storage api: Argument.UUID set value [I;1,3,220,0]
    data modify storage api: Argument.Amount set value -0.5
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add