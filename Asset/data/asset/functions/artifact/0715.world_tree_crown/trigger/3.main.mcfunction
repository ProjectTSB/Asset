#> asset:artifact/0715.world_tree_crown/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0715.world_tree_crown/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    execute rotated ~ 0 positioned ^ ^1.7 ^0.4 run function asset:artifact/0715.world_tree_crown/trigger/leaf_vfx
    execute rotated ~90 0 positioned ^ ^1.7 ^0.4 run function asset:artifact/0715.world_tree_crown/trigger/leaf_vfx
    execute rotated ~180 0 positioned ^ ^1.7 ^0.4 run function asset:artifact/0715.world_tree_crown/trigger/leaf_vfx
    execute rotated ~270 0 positioned ^ ^1.7 ^0.4 run function asset:artifact/0715.world_tree_crown/trigger/leaf_vfx
    execute positioned ~ ~1.7 ~ run function asset:artifact/0715.world_tree_crown/trigger/circle_vfx

    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.6 0
    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.4 0
    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.2 0
