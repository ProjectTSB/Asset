#> asset:artifact/0566.great_sage_helmet/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/566/tick/

# 時間経過
    execute unless predicate lib:in_battle run scoreboard players add @s FQ.TalkTime 1

# 確率で喋る
    execute if score @s FQ.TalkTime matches 3000.. if predicate lib:random_pass_per/40 run function asset:artifact/0566.great_sage_helmet/tick/talk
# 確率で好感度を1上げる
    execute if score @s FQ.TalkTime matches 3000.. if predicate lib:random_pass_per/10 run scoreboard players add @s FQ.Favorability 1

# スコアリセット
    execute if score @s FQ.TalkTime matches 3000.. run scoreboard players set @s FQ.TalkTime 0
