#> asset:effect/0016.kb_resist_buff/modifier/add
# @within function asset:effect/0016.kb_resist_buff/*/*

# N*0.05のKB耐性増加
    execute store result storage asset:temp G.Effect.Amount float 0.05 run data get storage asset:context Stack
    function asset:effect/0016.kb_resist_buff/modifier/add.m with storage asset:temp G.Effect
    data remove storage asset:temp G.Effect
