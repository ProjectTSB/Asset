#> asset:effect/0001.attack_base_buff/modifier/add
# @within function asset:effect/0001.attack_base_buff/*/*

# N*5%の基礎攻撃力増加
    data modify storage api: Argument.UUID set value [I;1,3,1,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
