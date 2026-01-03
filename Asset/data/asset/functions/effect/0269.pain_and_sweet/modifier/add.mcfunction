#> asset:effect/0269.pain_and_sweet/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0269.pain_and_sweet/given/

# MP回復
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.MPModifier
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add
