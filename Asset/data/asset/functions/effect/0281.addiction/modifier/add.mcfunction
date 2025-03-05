#> asset:effect/0281.addiction/modifier/add
#
#
#
# @within function asset:effect/0281.addiction/given/

# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,281,0]
    data modify storage api: Argument.Amount set value -0.3
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,281,0]
    data modify storage api: Argument.Amount set value -0.3
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
