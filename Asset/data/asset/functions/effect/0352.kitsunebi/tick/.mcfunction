#> asset:effect/0352.kitsunebi/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0352.kitsunebi/_/tick

# デクリメント
    execute store result storage asset:context this.Tick._ int 0.9999999999 run data get storage asset:context this.Tick._
# 1秒毎にダメージ
    execute if data storage asset:context this.Tick{_:0} run function asset:effect/0352.kitsunebi/tick/deal_damage
    execute if data storage asset:context this.Tick{_:0} run data modify storage asset:context this.Tick._ set from storage asset:context this.Tick.Max
