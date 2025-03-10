#> asset:effect/0034.regeneration/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0034.regeneration/_/tick

# 回復してそうな感じ
    effect give @s regeneration 1 0 true

# 1秒ごとに回復
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
    execute if data storage asset:context this{Tick:0} run function asset:effect/0034.regeneration/tick/heal
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 20
