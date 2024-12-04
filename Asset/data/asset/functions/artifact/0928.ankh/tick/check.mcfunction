#> asset:artifact/0928.ankh/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/928/tick/check

# 15%の確率でしか発動しない
    execute unless predicate lib:random_pass_per/15 run tag @s remove CanUsed
