#> asset:effect/0348.cool_feeling/modifier/add
#
#
#
# @within function
#   asset:effect/0348.cool_feeling/given/
#   asset:effect/0348.cool_feeling/re-given/

# 水攻撃
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    execute store result storage api: Argument.Amount double 0.06 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/water/add
