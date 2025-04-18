#> asset:artifact/0317.sea_storm_sword/trigger/vfx
#
# 演出の処理を実行
#
# @within function asset:artifact/0317.sea_storm_sword/trigger/3.main

# 演出
    particle electric_spark ~ ~1 ~ 0.4 0.5 0.4 0.05 10 normal @a
    particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 10
    particle block ice ~ ~ ~ 0.4 1.4 0.4 0 50
    playsound block.glass.break player @a ~ ~ ~ 1.2 1
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0.5
    playsound minecraft:block.amethyst_block.place player @a ~ ~ ~ 1 2
