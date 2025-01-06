#> asset:effect/0618.soaked/modifier/add
#
# 補正を追加する
#
# @within function
#   asset:effect/0618.soaked/given/
#   asset:effect/0618.soaked/re-given/

# 移動速度-20%を付与
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-026a00000000 "618.Speed" -0.2 multiply

# (-25 × Stack)%分の水耐性弱化を付与
    data modify storage api: Argument.UUID set value [I;1,3,618,0]
    execute store result storage api: Argument.Amount double -0.25 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/water/add
