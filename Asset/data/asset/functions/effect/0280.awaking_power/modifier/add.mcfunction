#> asset:effect/0280.awaking_power/modifier/add
#
#
#
# @within function asset:effect/0280.awaking_power/given/

# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,280,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,280,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# MP回復
    data modify storage api: Argument.UUID set value [I;1,3,280,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add
