#> asset:effect/0005.attack_water_buff/modifier/add
# @within function asset:effect/0005.attack_water_buff/*/*

# N*5%の水属性攻撃力増加
    data modify storage api: Argument.UUID set value [I;1,3,5,0]
    execute store result storage api: Argument.Amount double 0.05 run data get storage asset:context Stack 1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/water/add
