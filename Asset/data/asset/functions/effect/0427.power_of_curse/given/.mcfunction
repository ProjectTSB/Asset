#> asset:effect/0427.power_of_curse/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0427.power_of_curse/_/given

## modifier付与
# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,427,0]
    data modify storage api: Argument.Amount set value 0.1d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/base/add

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,3,427,0]
    data modify storage api: Argument.Amount set value 0.2d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_heal/add
