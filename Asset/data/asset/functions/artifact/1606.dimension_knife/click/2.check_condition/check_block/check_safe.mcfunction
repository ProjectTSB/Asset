#> asset:artifact/1606.dimension_knife/click/2.check_condition/check_block/check_safe
#
#
#
# @within function asset:artifact/1606.dimension_knife/click/2.check_condition

# ワープ先は厳密に判定する
    execute unless function asset:artifact/1606.dimension_knife/click/2.check_condition/check_block/player_hit_box run return 0

# 敵の背後は軽く判定する
    execute unless block ^ ^0 ^1.5 #lib:no_collision/ run return 0
    execute unless block ^ ^1.8 ^1.5 #lib:no_collision/ run return 0

    execute unless block ^ ^0 ^1 #lib:no_collision/ run return 0
    execute unless block ^ ^1.8 ^1 #lib:no_collision/ run return 0

    execute unless block ^ ^0 ^0.5 #lib:no_collision/ run return 0
    execute unless block ^ ^1.8 ^0.5 #lib:no_collision/ run return 0

# 成功
    return 1
