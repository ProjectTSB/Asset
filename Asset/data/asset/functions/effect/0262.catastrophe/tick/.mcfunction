#> asset:effect/0262.catastrophe/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0262.catastrophe/_/tick

# 演出
    particle soul_fire_flame ~ ~1.2 ~ 1 0.4 1 0 1 normal @a

# 戦闘時、スコアを上昇させる
    execute if predicate lib:in_battle run scoreboard players add @s 7A.BattleTime 1

# 戦闘時間2秒ごとにバフを付与する
    execute if entity @s[scores={7A.BattleTime=40..}] run function asset:effect/0262.catastrophe/tick/buff

# 戦闘が解除されたならスコアをリセット
    execute if entity @s[scores={7A.BattleTime=1..}] unless predicate lib:in_battle run function asset:effect/0262.catastrophe/reset
