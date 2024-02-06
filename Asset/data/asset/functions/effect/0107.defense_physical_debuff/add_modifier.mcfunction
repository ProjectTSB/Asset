#> asset:effect/0107.defense_physical_debuff/add_modifier
# @within function asset:effect/0107.defense_physical_debuff/*/*

# N*5%の物理耐性減少
    data modify storage api: Argument.UUID set value [I;1,3,107,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/physical/add
