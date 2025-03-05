#> asset:effect/0280.awaking_power/modifier/remove
#
#
#
# @within function
#   asset:effect/0280.awaking_power/end/
#   asset:effect/0280.awaking_power/remove/

# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,280,0]
    function api:modifier/attack/base/remove

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,280,0]
    function api:modifier/defense/base/remove

# MP回復
    data modify storage api: Argument.UUID set value [I;1,3,280,0]
    function api:modifier/mp_regen/remove
