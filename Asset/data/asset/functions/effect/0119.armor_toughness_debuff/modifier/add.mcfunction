#> asset:effect/0119.armor_toughness_debuff/modifier/add
# @within function asset:effect/0119.armor_toughness_debuff/*/*

# N*1の防具強度減少
    execute store result storage asset:temp 3B.Effect.Amount float -1 run data get storage asset:context Stack
    function asset:effect/0119.armor_toughness_debuff/modifier/add.m with storage asset:temp 3B.Effect
    data remove storage asset:temp 3B.Effect
