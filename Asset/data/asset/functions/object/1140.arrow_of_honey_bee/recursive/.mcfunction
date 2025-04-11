#> asset:object/1140.arrow_of_honey_bee/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1140/recursive

# vfx
    particle dust 1.000 0.741 0.141 0.8 ^ ^ ^-0.5 0.02 0.02 0.02 0 1 normal
    execute if predicate lib:random_pass_per/50 run particle minecraft:falling_honey ~ ~ ~ 0.02 0.02 0.02 0 1
