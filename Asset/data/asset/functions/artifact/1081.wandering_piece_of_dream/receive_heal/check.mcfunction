#> asset:artifact/1081.wandering_piece_of_dream/receive_heal/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1081/receive_heal/check

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s U1.Count 1

# スコアが規定値以下ならCanUsedを削除
    execute if entity @s[scores={U1.Count=..4}] run tag @s remove CanUsed

# 値が規定値以上ならリセット
    execute if entity @s[scores={U1.Count=5..}] run scoreboard players reset @s U1.Count
