#> asset:effect/0009.defense_magic_buff/modifier/add
# @within function asset:effect/0009.defense_magic_buff/*/*

# N*5%の魔法耐性増加
    data modify storage api: Argument.UUID set value [I;1,3,9,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/magic/add
