#> asset:artifact/0566.great_sage_helmet/tick/3.main
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/tick/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 確率で喋る
    execute if score @s FQ.TalkTime matches 3000.. if predicate lib:random_pass_per/40 run function asset:artifact/0566.great_sage_helmet/tick/talk
# 確率で好感度を1上げる
    execute if score @s FQ.TalkTime matches 3000.. if predicate lib:random_pass_per/10 run scoreboard players add @s FQ.Favorability 1
# スコアリセット
    execute if score @s FQ.TalkTime matches 3000.. run scoreboard players set @s FQ.TalkTime 0
