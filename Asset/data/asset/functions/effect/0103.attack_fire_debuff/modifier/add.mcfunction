#> asset:effect/0103.attack_fire_debuff/modifier/add
# @within function asset:effect/0103.attack_fire_debuff/*/*

# N*5%の火属性攻撃力減少
    data modify storage api: Argument.UUID set value [I;1,3,103,0]
    execute store result storage api: Argument.Amount double -0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/fire/add
