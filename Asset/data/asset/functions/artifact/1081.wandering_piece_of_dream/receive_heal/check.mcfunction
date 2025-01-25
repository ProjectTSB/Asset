#> asset:artifact/1081.wandering_piece_of_dream/receive_heal/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1081/receive_heal/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s U1.Count 1

# スコアが4以下ならCanUsedを削除
    execute if entity @s[scores={U1.Count=..4}] run tag @s remove CanUsed

# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1081.wandering_piece_of_dream/receive_heal/
