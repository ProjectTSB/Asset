#> asset:object/2042.lastboss_fireball/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2042/recursive

# パーティクル
    execute if predicate lib:random_pass_per/50 run particle minecraft:flame ^ ^ ^-0.5 0.25 0.25 0.25 0.01 3
    particle minecraft:smoke ^ ^ ^-0.5 0.25 0.25 0.25 0.01 3
    particle minecraft:dust 1 0.3 0.0 1.5 ^ ^ ^-0.5 0.25 0.25 0.25 0 2
