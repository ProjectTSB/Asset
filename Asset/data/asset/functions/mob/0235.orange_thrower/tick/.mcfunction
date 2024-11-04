#> asset:mob/0235.orange_thrower/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/235/tick

# 演出
    particle dust 0 1 0 1.3 ~ ~2 ~ 0.05 0 0.05 0 1 normal @a

# スコアが0以下の時は周囲にプレイヤーがいればスコアを増やす
# スコアが0以上なら強制的に増やす
# Tickの処理順の関係で0以上の方を先に書く
    execute if entity @s[scores={6J.Tick=0..}] run scoreboard players add @s 6J.Tick 1
    execute if entity @s[scores={6J.Tick=..0}] if entity @p[distance=..10] run scoreboard players add @s 6J.Tick 1

# スコアが0の時、周囲にプレイヤーがいなければスコアを戻す
    execute if entity @s[scores={6J.Tick=0}] unless entity @p[distance=..10] run scoreboard players set @s 6J.Tick -60

# みかん召喚
    execute if entity @s[scores={6J.Tick=0..}] run function asset:mob/0235.orange_thrower/tick/summon_orange
