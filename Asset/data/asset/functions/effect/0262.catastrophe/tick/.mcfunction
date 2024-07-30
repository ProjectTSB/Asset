#> asset:effect/0262.catastrophe/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0262.catastrophe/_/tick

# 戦闘時、スコアを上昇させる
    execute if predicate lib:in_battle run scoreboard players add @s 7A.BattleTime 1

# 戦闘時間1秒ごとにバフを付与する
    execute if entity @s[scores={7A.BattleTime=20..}] run function asset:effect/0262.catastrophe/tick/buff

# 戦闘が解除されたならスコアをリセット
    execute if entity @s[scores={7A.BattleTime=1..}] unless predicate lib:in_battle run function asset:effect/0262.catastrophe/reset
