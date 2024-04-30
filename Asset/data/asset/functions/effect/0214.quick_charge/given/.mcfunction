#> asset:effect/0214.quick_charge/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0214.quick_charge/_/given

# 雷攻撃+15%
    data modify storage api: Argument.UUID set value [I;1,3,214,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/thunder/add

# MP回復量+15%
    data modify storage api: Argument.UUID set value [I;1,3,214,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add