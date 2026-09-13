#> asset:object/1178.yumeori_falling_arrow_manager/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1178/tick

# 攻撃間隔
    execute store result storage asset:context this.Interval._ int 0.9999999999 run data get storage asset:context this.Interval._
    execute if data storage asset:context this.Interval{_:0} run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/0
    execute if data storage asset:context this.Interval{_:0} run data modify storage asset:context this.Interval._ set from storage asset:context this.Interval.Max

# 0なら消える
    execute if data storage asset:context this{Count:0} run kill @s
