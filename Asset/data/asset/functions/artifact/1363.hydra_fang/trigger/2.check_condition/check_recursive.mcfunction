#> asset:artifact/1363.hydra_fang/trigger/2.check_condition/check_recursive
#
#
#
# @within function
#   asset:artifact/1363.hydra_fang/trigger/2.check_condition
#   asset:artifact/1363.hydra_fang/trigger/2.check_condition/check_recursive

# 再帰回数のデクリメント
    scoreboard players remove $AttackCount Temporary 1

# N%を引いたらreturn
    execute if predicate lib:random_pass_per/20 run return fail

# まだ$AttackCountが残っているなら再帰
    execute if score $AttackCount Temporary matches 0.. run function asset:artifact/1363.hydra_fang/trigger/2.check_condition/check_recursive

# AttackCountが0未満ならCanUsedを削除
    execute unless score $AttackCount Temporary matches 0.. run tag @s remove CanUsed
