#> asset:effect/0109.defense_fire_debuff/add_modifier
# @within function asset:effect/0109.defense_fire_debuff/*/*

# N*5%の火属性耐性減少
    data modify storage api: Argument.UUID set value [I;1,3,109,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/fire/add
