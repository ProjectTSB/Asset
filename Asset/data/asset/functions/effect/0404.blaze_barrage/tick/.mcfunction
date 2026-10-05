#> asset:effect/0404.blaze_barrage/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0404.blaze_barrage/_/tick

# 位置固定
    tp @s 0 0 0
    tp @s ~ ~ ~

# 発射
    execute anchored eyes positioned ^ ^ ^15 facing ^ ^ ^-1 summon marker run function asset:effect/0404.blaze_barrage/tick/spread
