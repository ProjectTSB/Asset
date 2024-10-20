#> asset:mob/0078.messenger_of_thunder/tick/skill/consective/end
#
# 連続攻撃処理のリセット
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/consective/skill_select

# 連続攻撃用のTagとスコアをリセット
    tag @s remove 26.ConsecutiveAttack
    scoreboard players reset @s 26.Consecutive
