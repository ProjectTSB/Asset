#> asset:artifact/0715.world_tree_crown/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/715/equip

# 演出
    execute rotated ~ 0 positioned ^ ^1.7 ^0.4 run function asset:artifact/0715.world_tree_crown/vfx/leaf
    execute rotated ~90 0 positioned ^ ^1.7 ^0.4 run function asset:artifact/0715.world_tree_crown/vfx/leaf
    execute rotated ~180 0 positioned ^ ^1.7 ^0.4 run function asset:artifact/0715.world_tree_crown/vfx/leaf
    execute rotated ~270 0 positioned ^ ^1.7 ^0.4 run function asset:artifact/0715.world_tree_crown/vfx/leaf
    execute positioned ~ ~1.7 ~ run function asset:artifact/0715.world_tree_crown/vfx/circle

    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.6 0
    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.4 0
    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.2 0
