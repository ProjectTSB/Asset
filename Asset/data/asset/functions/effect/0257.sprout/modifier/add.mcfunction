#> asset:effect/0257.sprout/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0257.sprout/given/

# MP回復量+12%
    data modify storage api: Argument.UUID set value [I;1,3,257,0]
    data modify storage api: Argument.Amount set value 0.12
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add
