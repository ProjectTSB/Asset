#> asset:effect/0026.mining_fatigue/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0026.mining_fatigue/_/tick

# (Stack - 1)を求めてマクロで付与する
    execute store result storage asset:temp 26.Stack int 0.9999999999 run data get storage asset:context Stack
    function asset:effect/0026.mining_fatigue/tick/m with storage asset:temp 26
    data remove storage asset:temp 26
