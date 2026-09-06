#> asset:artifact/1606.dimension_knife/click/2.check_condition/find_enemy/
#
#
#
# @within function asset:artifact/1606.dimension_knife/click/2.check_condition

# 再帰用データ
    scoreboard players set $RecursiveLimit Temporary 16

# 視線先から再帰
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1606.dimension_knife/click/2.check_condition/find_enemy/recursive

#
    scoreboard players reset $RecursiveLimit Temporary
