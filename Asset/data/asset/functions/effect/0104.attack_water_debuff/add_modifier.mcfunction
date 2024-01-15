#> asset:effect/0104.attack_water_debuff/add_modifier
# @within function asset:effect/0104.attack_water_debuff/*/*

# N*5%の水属性攻撃力減少
    data modify storage api: Argument.UUID set value [I;1,3,104,0]
    data modify storage api: Argument.UUID[-2] set from storage asset:context id
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/water/add
