#> asset:effect/0118.armor_debuff/modifier/add
# @within function asset:effect/0118.armor_debuff/*/*

# N*1の防具値減少
    execute store result storage asset:temp 3A.Effect.Amount float -1 run data get storage asset:context Stack
    function asset:effect/0118.armor_debuff/modifier/add.m with storage asset:temp 3A.Effect
    data remove storage asset:temp 3A.Effect
