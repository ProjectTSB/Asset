#> asset:artifact/0730.lake_reflecting_starry_sky/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/730/click/check

# 夜かどうかをチェックする
    execute unless predicate lib:is_night run tag @s remove CanUsed
    execute unless predicate lib:is_night run function lib:message/artifact/condition_not_met
