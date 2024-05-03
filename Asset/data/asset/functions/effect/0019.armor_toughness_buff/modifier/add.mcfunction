#> asset:effect/0019.armor_toughness_buff/modifier/add
# @within function asset:effect/0019.armor_toughness_buff/*/*

# N*1の防具強度増加
    execute store result storage asset:temp J.Effect.Amount float 1 run data get storage asset:context Stack
    function asset:effect/0019.armor_toughness_buff/modifier/add.m with storage asset:temp J.Effect
    data remove storage asset:temp J.Effect
