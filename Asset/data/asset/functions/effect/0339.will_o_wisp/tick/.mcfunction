#> asset:effect/0339.will_o_wisp/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0339.will_o_wisp/_/tick

# デクリメント
    execute store result storage asset:context this.Interval._ int 0.9999999999 run data get storage asset:context this.Interval._
# 2tickおきにダメージを与える
    execute if data storage asset:context this.Interval{_:0} run function asset:effect/0339.will_o_wisp/tick/deal_damage
    execute if data storage asset:context this.Interval{_:0} run data modify storage asset:context this.Interval._ set from storage asset:context this.Interval.Max
