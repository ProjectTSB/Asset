#> asset:object/1188.banishing_ring/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1188/init

# 存在時間
    execute store result score @s General.Object.Tick run data get storage asset:context this.Tick

# Intervalに規定値を代入
    data modify storage asset:context this.Interval set from storage asset:context this.AttackInterval
