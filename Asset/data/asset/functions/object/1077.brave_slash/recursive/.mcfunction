#> asset:object/1077.brave_slash/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1077/recursive

# パーティクル
    particle minecraft:electric_spark ^ ^ ^-2 0 0 0 0.3 2
    execute if predicate lib:random_pass_per/25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 1
