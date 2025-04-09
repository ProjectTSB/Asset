#> asset:object/1112.school_of_fish/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1112/tick

# 一定間隔で魚を召喚
    execute store result storage asset:context this.Interval int 0.999999999 run data get storage asset:context this.Interval
    execute if data storage asset:context this{Interval:0} run function asset:object/1112.school_of_fish/tick/spread_summon
    execute if data storage asset:context this{Interval:0} run data modify storage asset:context this.Interval set value 2
