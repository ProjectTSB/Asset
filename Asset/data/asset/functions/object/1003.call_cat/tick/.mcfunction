#> asset:object/1003.call_cat/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1003/tick

# 一定間隔で回復
    execute store result storage asset:context this.HealInterval._ int 0.999999999 run data get storage asset:context this.HealInterval._
    execute if data storage asset:context this.HealInterval{_:0} run function asset:object/1003.call_cat/tick/heal
    execute if data storage asset:context this.HealInterval{_:0} run data modify storage asset:context this.HealInterval._ set from storage asset:context this.HealInterval.Max

# Tick減算
    execute store result storage asset:context this.Tick int 0.999999999 run data get storage asset:context this.Tick

# ばいばい
    execute if data storage asset:context this{Tick:0} run function asset:object/1003.call_cat/tick/goodbye
