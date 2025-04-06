#> asset:effect/0030.wither/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0030.wither/_/tick

# 黒ハート
    effect give @s wither 1 0 true

# 1秒ごとにダメージ
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1
    execute if data storage asset:context this{Tick:0} run function asset:effect/0030.wither/tick/deal_damage
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 20
