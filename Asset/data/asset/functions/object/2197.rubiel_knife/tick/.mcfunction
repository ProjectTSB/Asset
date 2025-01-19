#> asset:object/2197.rubiel_knife/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2197/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute if entity @s[tag=2197.HitBlock] run scoreboard players add @s 2197.RemoveTimer 1

# 移動
    execute unless entity @s[tag=2197.HitBlock] run function asset:object/super.tick

# 消滅処理
    kill @s[scores={2197.RemoveTimer=50..}]
