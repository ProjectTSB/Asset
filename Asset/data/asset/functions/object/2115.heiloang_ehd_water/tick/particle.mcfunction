#> asset:object/2115.heiloang_ehd_water/tick/particle
#
# Objectのtick時の処理
#
# @within asset:object/2115.heiloang_ehd_water/tick/

# 演出
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.5
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.5
    particle block ice ~ ~1 ~ 3 1 3 0.1 30 force
    particle explosion ~ ~1 ~ 3 1 3 0.1 10 force
    particle flash ~ ~1 ~ 3 1 3 0.1 5 force
    data modify storage api: Argument.ID set value 2127
    execute positioned ~ ~1 ~ run function api:object/summon

# 終了
    kill @s
