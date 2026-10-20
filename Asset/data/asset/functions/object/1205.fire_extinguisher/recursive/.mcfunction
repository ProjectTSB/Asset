#> asset:object/1205.fire_extinguisher/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1205/recursive

# 演出
    particle dust 1 1 1 0.7 ^ ^ ^ 0.05 0.05 0.05 0 1
    particle dust 1 1 1 0.7 ^ ^ ^-0.25 0.05 0.05 0.05 0 1

# 消火
    execute if predicate api:area/is_breakable run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #fire
