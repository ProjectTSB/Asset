#> asset:object/1130.thunder_stiletto/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1130/recursive

# vfx
    particle dust 1 0.8 0.4 0.5 ^ ^ ^-1 0.03 0.03 0.03 0 1
    execute if predicate lib:random_pass_per/70 run particle electric_spark ^ ^ ^-1 0.01 0.01 0.01 0 1
