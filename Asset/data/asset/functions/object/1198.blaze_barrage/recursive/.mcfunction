#> asset:object/1198.blaze_barrage/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1198/recursive

# 演出
    particle dust 1 0.255 0.027 0.5 ~ ~ ~ 0 0 0 0 1
    particle dust 1 0.255 0.027 0.5 ^ ^ ^-0.25 0 0 0 0 1
    execute if predicate lib:random_pass_per/4 run particle small_flame ~ ~ ~ 0.05 0.05 0.05 0 1 normal @a
