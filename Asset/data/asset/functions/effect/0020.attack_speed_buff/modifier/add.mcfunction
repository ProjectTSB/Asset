#> asset:effect/0020.attack_speed_buff/modifier/add
# @within function asset:effect/0020.attack_speed_buff/*/*

# N*1の攻撃速度増加
    execute store result storage asset:temp K.Effect.Amount float 1 run data get storage asset:context Stack
    function asset:effect/0020.attack_speed_buff/modifier/add.m with storage asset:temp K.Effect
    data remove storage asset:temp K.Effect
