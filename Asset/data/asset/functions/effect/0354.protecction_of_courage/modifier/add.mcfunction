#> asset:effect/0354.protecction_of_courage/modifier/add
#
# 効果の付与
#
# @within function asset:effect/0354.protecction_of_courage/given/

# 補正を付与する
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add
