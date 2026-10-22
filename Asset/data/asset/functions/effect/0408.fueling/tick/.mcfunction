#> asset:effect/0408.fueling/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0408.fueling/_/tick

# Interval減算
    execute store result storage asset:context this.Interval int 0.9999999999 run data get storage asset:context this.Interval
    execute if data storage asset:context this{Interval:0} run function asset:effect/0408.fueling/tick/countdown
