#> asset:effect/0110.defense_water_debuff/add_modifier
# @within function asset:effect/0110.defense_water_debuff/*/*

# N*5%の水属性耐性減少
    data modify storage api: Argument.UUID set value [I;1,3,110,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/water/add
