#> asset:effect/0117.move_speed_debuff/modifier/add
# @within function asset:effect/0117.move_speed_debuff/*/*

# N*0.05の移動速度減少
    execute store result storage asset:temp 39.Effect.Amount float -0.05 run data get storage asset:context Stack
    function asset:effect/0117.move_speed_debuff/modifier/add.m with storage asset:temp 39.Effect
    data remove storage asset:temp 39.Effect
