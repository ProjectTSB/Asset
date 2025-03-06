#> asset:effect/0029.poison/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0029.poison/_/tick

# 緑ハート
    effect give @s poison 1 0 true

# 1秒ごとにダメージ
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
    execute if data storage asset:context this{Tick:0} run function asset:effect/0029.poison/tick/deal_damage
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 20
