#> asset:effect/0419.grabbed_survival/modifier/add
#
#
#
# @within function asset:effect/0419.grabbed_survival/given/

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,3,419,0]
    data modify storage api: Argument.Amount set value 0.15d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add
