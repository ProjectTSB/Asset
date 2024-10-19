#> asset:mob/0078.messenger_of_thunder/tick/skill/consective/skill_select
#
# 連続攻撃状態でのスキル選択処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill_select

# 仕様
# (通常雷 or 偏差雷)を2~4回繰り返す → リターン → カーテン

# 何回目の攻撃かをスコアでカウント
    scoreboard players add @s 26.Consecutive 1

# スコアが1~4の間は通常の雷 or 偏差雷
    execute if entity @s[scores={26.Consecutive=1..4}] run scoreboard players set $Random Temporary 0
    execute if entity @s[scores={26.Consecutive=1..4}] if predicate lib:random_pass_per/50 run scoreboard players set $Random Temporary 4

# スコアが3以上で確率、5で確実にスコアの値を10にする
    execute if entity @s[scores={26.Consecutive=3..4}] if predicate lib:random_pass_per/30 run scoreboard players set @s 26.Consecutive 10
    execute if entity @s[scores={26.Consecutive=5}] run scoreboard players set @s 26.Consecutive 10

# スコアが10ならリターンに派生
    execute if entity @s[scores={26.Consecutive=10}] run scoreboard players set $Random Temporary 2

# スコアが11ならカーテン
    execute if entity @s[scores={26.Consecutive=11..}] run scoreboard players set $Random Temporary 1

# 11以上ならリセット処理
    execute if entity @s[scores={26.Consecutive=11..}] run function asset:mob/0078.messenger_of_thunder/tick/skill/consective/end
