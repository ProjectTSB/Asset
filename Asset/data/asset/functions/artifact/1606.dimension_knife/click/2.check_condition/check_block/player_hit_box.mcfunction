#> asset:artifact/1606.dimension_knife/click/2.check_condition/check_block/player_hit_box
#
#
#
# @within function asset:artifact/1606.dimension_knife/click/2.check_condition/check_block/check_safe

    execute unless block ^0.3 ^0 ^0.3 #lib:no_collision/ run return 0
    execute unless block ^-0.3 ^0 ^0.3 #lib:no_collision/ run return 0
    execute unless block ^0.3 ^0 ^-0.3 #lib:no_collision/ run return 0
    execute unless block ^-0.3 ^0 ^-0.3 #lib:no_collision/ run return 0

    execute unless block ^0.3 ^1.8 ^0.3 #lib:no_collision/ run return 0
    execute unless block ^-0.3 ^1.8 ^0.3 #lib:no_collision/ run return 0
    execute unless block ^0.3 ^1.8 ^-0.3 #lib:no_collision/ run return 0
    execute unless block ^-0.3 ^1.8 ^-0.3 #lib:no_collision/ run return 0

# 成功
    return 1
