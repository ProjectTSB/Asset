#> asset:object/2092.ghost_bullet/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2092/recursive

# 演出
    particle dust 0 0.7 0.7 1 ~ ~-0.1 ~ 0.15 0.15 0.15 0 1
    execute if predicate lib:random_pass_per/50 run particle soul_fire_flame ~ ~-0.1 ~ 0.15 0.15 0.15 0.02 1
