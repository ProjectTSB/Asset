#> asset:artifact/1088.purifying_hydrangea/receive_heal/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1088/receive_heal/check

# 天候が(雨or雷雨でなければ) = 晴れならCanUsedを削除
    execute unless predicate lib:weather/is_raining unless predicate lib:weather/is_thundering run tag @s remove CanUsed
