#> asset:effect/0265.light_of_firefly/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0265.light_of_firefly/given/

# MP回復量+10%
    data modify storage api: Argument.UUID set value [I;1,3,265,0]
    data modify storage api: Argument.Amount set value 0.10
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add
