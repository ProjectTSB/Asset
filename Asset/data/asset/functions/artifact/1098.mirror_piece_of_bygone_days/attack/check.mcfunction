#> asset:artifact/1098.mirror_piece_of_bygone_days/attack/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1098/attack/check

# 確率でCanUsedを削除
    execute unless predicate lib:random_pass_per/20 run tag @s remove CanUsed
