#> asset:effect/0375.charge_of_thunderflash/end/iai/check/allowed_blocks
#
#
#
# @within function asset:effect/0375.charge_of_thunderflash/end/iai/check/hit_box

# 現座標が((no_collision || 下付きハーフブロック)ならtrue
    execute if block ~ ~ ~ #lib:no_collision/ run return 1
    execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run return 1

# false
    return 0
