#> asset:object/2156.haruclaire_icepillar/tick/set_ground
#
# Objectのtick時の処理
#
# @within asset:object/2156.haruclaire_icepillar/tick/

# 演出
    particle explosion ~ ~-2.5 ~ 0.5 0.5 0.5 0 3
    particle block ice ~ ~-2.5 ~ 0.5 0.5 0.5 0 20
    particle end_rod ~ ~-2 ~ 0 0 0 0.2 10
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 0.7
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 0.6
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 0.5

# 終了
    tag @s add 2156.StartAttack
