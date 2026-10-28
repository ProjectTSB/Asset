#> asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/2.check_condition

#> Private
# @within function asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/*
    #declare score_holder $rec

# 36回実行
    scoreboard players set $rec Temporary 36

# 初回だけOffsetが固定
    data modify storage asset:temp Args.OffsetX set value 0
    data modify storage asset:temp Args.OffsetY set value 0
    data modify storage asset:temp Args.OffsetZ set value 2.5

# 再帰
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1465.versatile_plasma/release_using_item/3.1.spark/rec

# リセット
    scoreboard players reset $rec
    data remove storage asset:temp Args
