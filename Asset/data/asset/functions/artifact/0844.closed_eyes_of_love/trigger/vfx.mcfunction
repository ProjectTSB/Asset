#> asset:artifact/0844.closed_eyes_of_love/trigger/vfx
#
# vfx
#
# @within function asset:artifact/0844.closed_eyes_of_love/trigger/3.main

# 音
    playsound minecraft:item.trident.return player @a[distance=..16] ~ ~ ~ 1 2 1
    playsound ogg:random.levelup player @a[distance=..16] ~ ~ ~ 1 2 1

# パーティクル
    execute anchored eyes positioned ^0.15 ^ ^ positioned ~ ~1 ~ run particle block_marker light ~ ~ ~ 0 0 0 0 1
