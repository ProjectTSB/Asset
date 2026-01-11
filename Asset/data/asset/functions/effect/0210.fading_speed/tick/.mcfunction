#> asset:effect/0210.fading_speed/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0210.fading_speed/_/tick

# インターバルのデクリメント
# インターバルが0になるごとにスタックを1下げる
    execute store result storage asset:context this.UpdateInterval._ int 0.9999999999 run data get storage asset:context this.UpdateInterval._
    execute if data storage asset:context this.UpdateInterval{_:0} run function asset:effect/0210.fading_speed/tick/reduce_stack
    execute if data storage asset:context this.UpdateInterval{_:0} run data modify storage asset:context this.UpdateInterval._ set from storage asset:context this.UpdateInterval.Max
