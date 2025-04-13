#> asset:effect/0305.poison_of_flowgun/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0305.poison_of_flowgun/_/tick

# vfx
    execute if predicate lib:random_pass_per/30 run particle minecraft:entity_effect ~ ~1.2 ~ 0.1 0.3 0.1 1 0

# デクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
# 1 秒おきにダメージを与える
    execute if data storage asset:context this{Tick:0} run function asset:effect/0305.poison_of_flowgun/tick/deal_damage
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 20
