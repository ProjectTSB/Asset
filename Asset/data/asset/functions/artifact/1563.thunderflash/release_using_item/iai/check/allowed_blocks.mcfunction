#> asset:artifact/1563.thunderflash/release_using_item/iai/check/allowed_blocks
#
#
#
# @within function asset:artifact/1563.thunderflash/release_using_item/iai/check/hit_box

# 現座標が((no_collision || 下付きハーフブロック)ならtrue
    execute if block ~ ~ ~ #lib:no_collision/ run return 1
    execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run return 1

# false
    return 0
