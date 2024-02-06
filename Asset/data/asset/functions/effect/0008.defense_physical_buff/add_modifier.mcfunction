#> asset:effect/0008.defense_physical_buff/add_modifier
# @within function asset:effect/0008.defense_physical_buff/*/*

# N*5%の物理耐性増加
    data modify storage api: Argument.UUID set value [I;1,3,8,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/physical/add
