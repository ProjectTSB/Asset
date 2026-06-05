#> asset:effect/0355.heart_gap/modifier/add
#
# 効果の付与
#
# @within function asset:effect/0355.heart_gap/given/

# 補正を付与する
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add
