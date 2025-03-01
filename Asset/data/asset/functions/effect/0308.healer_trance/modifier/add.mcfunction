#> asset:effect/0308.healer_trance/modifier/add
#
#
#
# @within function asset:effect/0308.healer_trance/*/

# 攻撃
    data modify storage api: Argument.UUID set value [I;1,3,308,0]
    execute store result storage api: Argument.Amount double 0.001 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
