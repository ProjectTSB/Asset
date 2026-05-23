#> asset:effect/354.protecction_of_courage/modifier/add
#
# 効果の付与
#
# @within function asset:effect/354.protecction_of_courage/given/

# 補正を付与する
    data modify storage api: Argument.UUID set value [I;1,3,354,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add
