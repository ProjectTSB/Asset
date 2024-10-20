#> asset:effect/0607.sedation/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0607.sedation/given/
#   asset:effect/0607.sedation/re-given/

# 属性攻撃(-10 * スタック)%を付与
    data modify storage api: Argument.UUID set value [I;1,3,607,0]
    execute store result storage api: Argument.Amount double -0.1 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
