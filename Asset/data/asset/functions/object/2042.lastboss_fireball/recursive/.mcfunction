#> asset:object/2042.lastboss_fireball/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2042/recursive

# パーティクル
    execute if predicate lib:random_pass_per/25 run particle minecraft:flame ^ ^ ^-0.5 0 0 0 0.01 1
    particle minecraft:smoke ^ ^ ^-0.5 0 0 0 0.01 1
#    particle minecraft:dust 1 0.4 0.1 1 ^ ^ ^-0.5 0 0 0 0 1
