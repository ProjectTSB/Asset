#> asset:effect/0327.honey_poison/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0327.honey_poison/_/tick

# vfx
    execute if predicate lib:random_pass_per/50 run particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 0 1 normal

# デクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick
# 1 秒おきにダメージを与える
    execute if data storage asset:context this{Tick:0} run function asset:effect/0327.honey_poison/tick/deal_damage
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set from storage asset:context this.DamageInterval
