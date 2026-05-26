#> asset:artifact/1098.mirror_piece_of_bygone_days/trigger/2.check_condition/check_recursive
#
# 指定された回数だけ判定を繰り返す
#
# @within function
#   asset:artifact/1098.mirror_piece_of_bygone_days/trigger/2.check_condition
#   asset:artifact/1098.mirror_piece_of_bygone_days/trigger/2.check_condition/check_recursive

# 再帰回数のデクリメント
    scoreboard players remove $AttackCount Temporary 1

# 20%を引いたらreturn
    execute if predicate lib:random_pass_per/20 run return fail

# 20%を引けてないかつ、まだ$AttackCountが残っているなら再帰
    execute if score $AttackCount Temporary matches 0.. run function asset:artifact/1098.mirror_piece_of_bygone_days/trigger/2.check_condition/check_recursive

# AttackCountが0未満ならCanUsedを削除
    execute unless score $AttackCount Temporary matches 0.. run tag @s remove CanUsed
