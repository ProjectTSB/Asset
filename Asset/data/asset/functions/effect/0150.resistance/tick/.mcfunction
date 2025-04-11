#> asset:effect/0150.resistance/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0150.resistance/_/tick

# (Stack - 1)を求めてマクロで付与する
    execute store result storage asset:temp Args.Stack int 0.9999999999 run data get storage asset:context Stack
    function asset:effect/0150.resistance/tick/give.m with storage asset:temp Args
    data remove storage asset:temp Args
