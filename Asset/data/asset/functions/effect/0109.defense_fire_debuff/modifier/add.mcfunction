#> asset:effect/0109.defense_fire_debuff/modifier/add
# @within function asset:effect/0109.defense_fire_debuff/*/*

# N*5%の火属性耐性減少
    data modify storage api: Argument.UUID set value [I;1,3,109,0]
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/fire/add
