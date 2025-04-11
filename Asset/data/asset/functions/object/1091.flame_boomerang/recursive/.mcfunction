#> asset:object/1091.flame_boomerang/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1091/recursive

# 演出
    execute if predicate lib:random_pass_per/50 on passengers at @s run particle flame ~ ~ ~ 0.05 0.05 0.05 0 1
