#> asset:effect/0116.kb_resist_debuff/modifier/add
# @within function asset:effect/0116.kb_resist_debuff/*/*

# N*0.05のノックバック耐性減少
    execute store result storage asset:temp 38.Effect.Amount float -0.05 run data get storage asset:context Stack
    function asset:effect/0116.kb_resist_debuff/modifier/add.m with storage asset:temp 38.Effect
    data remove storage asset:temp 38.Effect
