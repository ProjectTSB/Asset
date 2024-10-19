#> asset:object/2057.lexiel_rod_fireball/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2057/recursive

# particle
    execute if predicate lib:random_pass_per/30 run particle flame ~ ~0.2 ~ 0 0 0 0.01 2
    execute if predicate lib:random_pass_per/30 run particle smoke ~ ~0.2 ~ 0 0 0 0.01 3
