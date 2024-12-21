#> asset:object/2150.haruclaire_ice_wall/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2150.haruclaire_ice_wall/tick/

# 攻撃

# 演出
    particle end_rod ~ ~2 ~ 0.1 0.1 0.1 0.2 20
    particle flash ~ ~2 ~ 0 0 0 0 1
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 0.5
    playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 0.6
