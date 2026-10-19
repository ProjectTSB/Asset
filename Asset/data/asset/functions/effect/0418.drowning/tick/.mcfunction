#> asset:effect/0418.drowning/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0418.drowning/_/tick

#> private
# @private
    #declare score_holder $MPRatio

# Interval減産
    execute store result storage asset:context this.Interval int 0.9999999999 run data get storage asset:context this.Interval

# Intervalが0ならMP消費
    execute if data storage asset:context this{Interval:0} run function asset:effect/0418.drowning/tick/fluctuation
