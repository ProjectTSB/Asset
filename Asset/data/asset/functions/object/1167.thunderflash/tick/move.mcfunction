#> asset:object/1167.thunderflash/tick/move
#
#
#
# @within function asset:object/1167.thunderflash/tick/

# (Range - 1)
    execute store result storage asset:context this.Range int 0.9999999999 run data get storage asset:context this.Range

# 2回に1回攻撃
    execute store result storage asset:context this.Interval._ int 0.9999999999 run data get storage asset:context this.Interval._
    execute if data storage asset:context this.Interval{_:0} run function asset:object/1167.thunderflash/tick/attack/
    execute if data storage asset:context this.Interval{_:0} run data modify storage asset:context this.Interval._ set from storage asset:context this.Interval.Max

# 進む
    tp @s ^ ^ ^0.5

# Rangeが0ならkill
    execute if data storage asset:context this{Range:0} run kill @s
