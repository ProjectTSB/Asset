#> asset:artifact/1088.purifying_hydrangea/receive_heal/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1088/receive_heal/check

# 使用回数スコア
    execute if entity @s[tag=CanUsed] run scoreboard players add @s U8.Count 1

# 使用回数が3以上でなければCanUsedを削除
    execute if entity @s[tag=CanUsed] unless score @s U8.Count matches 3.. run tag @s remove CanUsed

# 天候が(雨or雷雨でなければ) = 晴れならCanUsedを削除
    # execute unless predicate lib:weather/is_raining unless predicate lib:weather/is_thundering run tag @s remove CanUsed
