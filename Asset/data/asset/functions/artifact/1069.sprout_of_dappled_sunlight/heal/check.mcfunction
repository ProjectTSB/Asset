#> asset:artifact/1069.sprout_of_dappled_sunlight/heal/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1069/heal/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s TP.UseCount 1

# スコアが5以下ならCanUsedを削除
    execute if entity @s[scores={TP.UseCount=..5}] run tag @s remove CanUsed

# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1069.sprout_of_dappled_sunlight/heal/
