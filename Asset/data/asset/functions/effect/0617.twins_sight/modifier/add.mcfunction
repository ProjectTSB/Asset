#> asset:effect/0617.twins_sight/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0617.twins_sight/given/

# MP回復量+12%
    data modify storage api: Argument.UUID set value [I;1,3,617,0]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add
