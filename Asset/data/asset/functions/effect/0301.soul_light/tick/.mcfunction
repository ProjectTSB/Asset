#> asset:effect/0301.soul_light/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0301.soul_light/_/tick

# デクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
# 1 秒おきに回復
    execute if data storage asset:context this{Tick:0} run function asset:effect/0301.soul_light/tick/heal
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 20

# Duration を保存しておく
    data modify storage asset:context this.Duration set from storage asset:context Duration
