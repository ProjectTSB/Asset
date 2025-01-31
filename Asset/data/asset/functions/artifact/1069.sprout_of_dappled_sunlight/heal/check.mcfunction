#> asset:artifact/1069.sprout_of_dappled_sunlight/heal/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1069/heal/check

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s TP.UseCount 1

# スコアが規定値以下ならCanUsedを削除
    execute if entity @s[scores={TP.UseCount=..5}] run tag @s remove CanUsed

# 値が規定値以上ならリセット
    execute if entity @s[scores={TP.UseCount=6..}] run scoreboard players reset @s TP.UseCount
