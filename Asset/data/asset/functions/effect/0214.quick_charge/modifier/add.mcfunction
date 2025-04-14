#> asset:effect/0214.quick_charge/modifier/add
#
#
#
# @within function asset:effect/0214.quick_charge/given/

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,3,214,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/thunder/add
