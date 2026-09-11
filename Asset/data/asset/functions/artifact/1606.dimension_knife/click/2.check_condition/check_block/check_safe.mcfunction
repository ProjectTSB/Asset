#> asset:artifact/1606.dimension_knife/click/2.check_condition/check_block/check_safe
#
#
#
# @within function asset:artifact/1606.dimension_knife/click/2.check_condition

# ワープ先は厳密に判定する
    execute positioned ^ ^ ^1.6 unless function asset:artifact/1606.dimension_knife/click/2.check_condition/check_block/player_hit_box run return 0

# 敵のすぐ背後も判定する
    execute positioned ^ ^ ^1.5 unless function asset:artifact/1606.dimension_knife/click/2.check_condition/check_block/player_hit_box run return 0
    execute positioned ^ ^ ^1.0 unless function asset:artifact/1606.dimension_knife/click/2.check_condition/check_block/player_hit_box run return 0
    execute positioned ^ ^ ^0.5 unless function asset:artifact/1606.dimension_knife/click/2.check_condition/check_block/player_hit_box run return 0

# 成功
    return 1
