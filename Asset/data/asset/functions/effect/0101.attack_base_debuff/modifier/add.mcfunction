#> asset:effect/0101.attack_base_debuff/modifier/add
# @within function asset:effect/0101.attack_base_debuff/*/*

# N*5%の基礎攻撃力低下
    data modify storage api: Argument.UUID set value [I;1,3,101,0]
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
