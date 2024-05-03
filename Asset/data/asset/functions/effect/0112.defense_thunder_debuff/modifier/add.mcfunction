#> asset:effect/0112.defense_thunder_debuff/modifier/add
# @within function asset:effect/0112.defense_thunder_debuff/*/*

# N*5%の雷属性耐性減少
    data modify storage api: Argument.UUID set value [I;1,3,112,0]
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/thunder/add
