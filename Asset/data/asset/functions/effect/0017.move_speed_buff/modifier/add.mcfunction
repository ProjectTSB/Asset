#> asset:effect/0017.move_speed_buff/modifier/add
# @within function asset:effect/0017.move_speed_buff/*/*

# N*0.05の移動速度増加
    execute store result storage asset:temp H.Effect.Amount float 0.05 run data get storage asset:context Stack
    function asset:effect/0017.move_speed_buff/modifier/add.m with storage asset:temp H.Effect
    data remove storage asset:temp H.Effect
