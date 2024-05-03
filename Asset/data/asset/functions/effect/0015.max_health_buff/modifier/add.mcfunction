#> asset:effect/0015.max_health_buff/modifier/add
# @within function asset:effect/0015.max_health_buff/*/*

# N*1の最大体力増加
    execute store result storage asset:temp F.Effect.Amount float 1 run data get storage asset:context Stack
    function asset:effect/0015.max_health_buff/modifier/add.m with storage asset:temp F.Effect
    data remove storage asset:temp F.Effect
