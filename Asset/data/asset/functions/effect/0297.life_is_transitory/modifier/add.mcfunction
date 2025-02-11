#> asset:effect/0297.life_is_transitory/modifier/add
# @within function asset:effect/0297.life_is_transitory/given/

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,3,297,0]
    data modify storage api: Argument.Amount set value -0.99d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_health/add
