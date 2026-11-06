#> asset:object/1205.fire_extinguisher/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1205/recursive

# 演出
    particle dust 1 1 1 0.7 ^ ^ ^ 0.05 0.05 0.05 0 1
    particle dust 1 1 1 0.7 ^ ^ ^-0.25 0.05 0.05 0.05 0 1

# ダメージ減衰開始用フィールドをデクリメント
    execute store result storage asset:context this.Attenuation.Start int 0.9999999999 run data get storage asset:context this.Attenuation.Start

# 0なら減衰処理を開始
    execute if data storage asset:context this.Attenuation{Start:0,IsMin:false} run function asset:object/1205.fire_extinguisher/recursive/attenuation

# 消火
    execute if predicate api:area/is_breakable run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #fire
