#> asset:effect/0327.honey_poison/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0327.honey_poison/_/tick

# デクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick
# N秒毎にダメージ(一定ではないため)
    execute if data storage asset:context this{Tick:0} run function asset:effect/0327.honey_poison/tick/deal_damage
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set from storage asset:context this.DamageInterval
