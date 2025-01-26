#> asset:object/1082.soulfire_burst_bigshot/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1082/recursive

# パーティクル
    particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 3
    particle minecraft:entity_effect ~ ~ ~ 0 1 1 1 0
    execute if predicate lib:random_pass_per/50 run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
