#> asset:artifact/1606.dimension_knife/click/2.check_condition/check_safe
#
#
#
# @within function asset:artifact/1606.dimension_knife/click/2.check_condition

# ブロックチェック
    execute unless block ^ ^1.8 ^1.6 #lib:no_collision/ run return 0
    execute unless block ^ ^1.8 ^1.6 #lib:no_collision/ run return 0

    execute unless block ^ ^1.8 ^1.5 #lib:no_collision/ run return 0
    execute unless block ^ ^1.8 ^1.5 #lib:no_collision/ run return 0

    execute unless block ^ ^1.8 ^1 #lib:no_collision/ run return 0
    execute unless block ^ ^1.8 ^1 #lib:no_collision/ run return 0

    execute unless block ^ ^1.8 ^0.5 #lib:no_collision/ run return 0
    execute unless block ^ ^1.8 ^0.5 #lib:no_collision/ run return 0

# 成功
    return 1
