#> asset:effect/0217.the_answer/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0217.the_answer/given/

# MP回復量-100%
    data modify storage api: Argument.UUID set value [I;1,3,217,0]
    data modify storage api: Argument.Amount set value -1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add
