#> asset:effect/0018.armor_buff/modifier/add
# @within function asset:effect/0018.armor_buff/*/*

# N*1の防具値増加
    execute store result storage asset:temp I.Effect.Amount float 1 run data get storage asset:context Stack
    function asset:effect/0018.armor_buff/modifier/add.m with storage asset:temp I.Effect
    data remove storage asset:temp I.Effect
