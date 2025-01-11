#> asset:mob/0078.messenger_of_thunder/tick/skill/consective/end
#
# 連続攻撃処理のリセット
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/consective/skill_select

# 連続攻撃用のTagとスコアをリセット
    tag @s remove 26.ConsecutiveAttack
    scoreboard players reset @s 26.Consecutive

# 連続攻撃のクールタイム
# スキル選択時に1ずつ減り、0で再使用可能となる
    scoreboard players set @s 26.ConsecutiveCool 5
