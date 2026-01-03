#> asset:effect/0269.pain_and_sweet/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0269.pain_and_sweet/given/

# MP回復+5%
    data modify storage api: Argument.UUID set value [I;1,3,269,0]
    data modify storage api: Argument.Amount set from storage asset:context this.MPModifier
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add
