#> asset:effect/0028.hunger/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0028.hunger/_/tick

# (Stack - 1)を求めてマクロで付与する
    execute store result storage asset:temp 28.Stack int 0.9999999999 run data get storage asset:context Stack
    function asset:effect/0028.hunger/tick/m with storage asset:temp 28
    data remove storage asset:temp 28
