#> asset:object/2269.gem_rocket_punch/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2269/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 出現、待機
    execute unless entity @s[tag=2269.Attack] run function asset:object/2269.gem_rocket_punch/tick/event_wait

# 攻撃
    execute if entity @s[tag=2269.Attack] run function asset:object/2269.gem_rocket_punch/tick/event_attack
