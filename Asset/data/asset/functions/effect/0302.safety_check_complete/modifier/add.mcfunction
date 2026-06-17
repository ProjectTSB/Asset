#> asset:effect/0302.safety_check_complete/modifier/add
#
#
#
# @within function asset:effect/0302.safety_check_complete/given/

# 耐性
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
