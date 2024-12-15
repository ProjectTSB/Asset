#> asset:object/1064.fire_of_rebirth/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1064/recursive

# 演出
    execute if predicate lib:random_pass_per/20 run particle dust 100000000 2 0 2 ~ ~ ~ 0.2 0.2 0.2 0 5
    execute if predicate lib:random_pass_per/20 run particle lava ~ ~ ~ 0.2 0.2 0.2 0 1
