#> asset:effect/0367.water_affection/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0367.water_affection/given/
#   asset:effect/0367.water_affection/re-given/

# 火耐性+5%
    data modify storage api: Argument.UUID set value [I;1,3,367,0]
    execute store result storage api: Argument.Amount double 0.02 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply_base"
# リセット
    function api:modifier/defense/water/add
