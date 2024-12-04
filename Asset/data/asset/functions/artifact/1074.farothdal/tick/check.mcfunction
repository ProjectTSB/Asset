#> asset:artifact/1074.farothdal/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1074/tick/check


# 走ってる時だけCanUsedがつく
    execute unless predicate lib:is_sprinting run tag @s remove CanUsed