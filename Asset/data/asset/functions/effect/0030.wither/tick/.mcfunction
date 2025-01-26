#> asset:effect/0030.wither/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0030.wither/_/tick

# (Stack - 1)を求めてマクロで付与する
    execute store result storage asset:temp 30.Stack int 0.9999999999 run data get storage asset:context Stack
    function asset:effect/0030.wither/tick/m with storage asset:temp 30
    data remove storage asset:temp 30
