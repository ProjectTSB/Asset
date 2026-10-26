#> asset:effect/0405.predation_of_tree/modifier/add
#
# 補正付与
#
# @within function asset:effect/0405.predation_of_tree/given/

# MP回復
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.MPModifier
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_heal/add
