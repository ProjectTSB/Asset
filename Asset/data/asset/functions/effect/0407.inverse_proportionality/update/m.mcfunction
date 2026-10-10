#> asset:effect/0407.inverse_proportionality/update/m
#
#
#
# @within function asset:effect/0407.inverse_proportionality/update/

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,407,0]
    $data modify storage api: Argument.Amount set value $(Modifier)d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add

# 与回復量
    data modify storage api: Argument.UUID set value [I;1,3,407,0]
    $data modify storage api: Argument.Amount set value $(Modifier)d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/heal/add
