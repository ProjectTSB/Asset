#> asset:effect/0012.defense_thunder_buff/add_modifier
# @within function asset:effect/0012.defense_thunder_buff/*/*

# N*5%の雷属性耐性増加
    data modify storage api: Argument.UUID set value [I;1,3,12,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/thunder/add
