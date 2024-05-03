#> asset:effect/0115.max_health_debuff/modifier/add
# @within function asset:effect/0115.max_health_debuff/*/*

# N*1の最大体力減少
    execute store result storage asset:temp 37.Effect.Amount float -1 run data get storage asset:context Stack
    function asset:effect/0115.max_health_debuff/modifier/add.m with storage asset:temp 37.Effect
    data remove storage asset:temp 37.Effect
