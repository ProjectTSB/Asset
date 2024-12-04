#> asset:artifact/1069.sprout_of_dappled_sunlight/heal/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1069/heal/check

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s TP.UseCount 1

# スコアが2以下ならCanUsedを削除
    execute if entity @s[scores={TP.UseCount=..2}] run tag @s remove CanUsed

# 値が3以上ならリセット
    execute if entity @s[scores={TP.UseCount=3..}] run scoreboard players reset @s TP.UseCount
