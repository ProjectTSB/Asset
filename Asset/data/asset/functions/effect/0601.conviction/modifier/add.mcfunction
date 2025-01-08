#> asset:effect/0601.conviction/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0601.conviction/given/
#   asset:effect/0601.conviction/re-given/

# 被回復量(-10 * Stack)%
    data modify storage api: Argument.UUID set value [I;1,3,601,0]
    execute store result storage api: Argument.Amount double -0.1 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add
