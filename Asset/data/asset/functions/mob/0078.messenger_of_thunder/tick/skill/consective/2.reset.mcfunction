#> asset:mob/0078.messenger_of_thunder/tick/skill/consective/2.reset
#
# 連続攻撃処理のリセット
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/consective/1.skill_select

# 連続攻撃用のTagとスコアをリセット
    tag @s remove 26.ConsecutiveThunder
    scoreboard players reset @s 26.Consecutive
