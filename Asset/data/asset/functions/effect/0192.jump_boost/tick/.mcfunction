#> asset:effect/0192.jump_boost/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0192.jump_boost/_/tick

# (Stack - 1)を求めてマクロでエフェクトを付与
    execute store result storage asset:temp Args.Stack int 0.9999999999 run data get storage asset:context Stack
    function asset:effect/0192.jump_boost/tick/m with storage asset:temp Args
    data remove storage asset:temp Args
