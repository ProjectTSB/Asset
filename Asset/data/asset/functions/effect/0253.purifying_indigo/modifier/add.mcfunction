#> asset:effect/0253.purifying_indigo/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0253.purifying_indigo/given/
#   asset:effect/0253.purifying_indigo/re-given/

# 水攻撃+(7.5 * Stack)%
    data modify storage api: Argument.UUID set value [I;1,3,253,0]
    execute store result storage api: Argument.Amount double 0.075 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/water/add
