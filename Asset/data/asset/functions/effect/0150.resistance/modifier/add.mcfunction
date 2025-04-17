#> asset:effect/0150.resistance/modifier/add
#
#
#
# @within function
#   asset:effect/0150.resistance/given/
#   asset:effect/0150.resistance/re-given/

# 付与
    data modify storage api: Argument.UUID set value [I;1,3,150,0]
    execute store result storage api: Argument.Amount double 0.1 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
