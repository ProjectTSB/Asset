#> asset:object/2250.clock_fire/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2250/tick

# Tick
    execute store result storage asset:context this.Delay int 0.9999999999 run data get storage asset:context this.Delay

# 消滅処理
    execute if data storage asset:context this{Delay:0} run function asset:object/2250.clock_fire/tick/blast
