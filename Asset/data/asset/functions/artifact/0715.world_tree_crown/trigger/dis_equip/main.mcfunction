#> asset:artifact/0715.world_tree_crown/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0715.world_tree_crown/trigger/dis_equip/

# 演出
    particle falling_dust glow_lichen ~ ~1.7 ~ 0.4 0.2 0.4 0 20 normal @a
    particle block oak_leaves ~ ~1.7 ~ 0.4 0.2 0.4 0 20 normal @a
    playsound block.grass.break player @a ~ ~ ~ 1 1 0
