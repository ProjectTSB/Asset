#> asset:artifact/1051.blue_crystal_of_stardust/damage/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1051/damage/check

# 3回ごとに効果が発動する

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s T7.UseCount 1

# スコアが規定値以下ならCanUsedを削除
    execute if entity @s[scores={T7.UseCount=..6}] run tag @s remove CanUsed

# スコアが規定値になったらリセット
    execute if entity @s[scores={T7.UseCount=7..}] run scoreboard players reset @s T7.UseCount
