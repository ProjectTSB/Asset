#> asset:artifact/0916.flame_hunter_clothes/trigger/vfx
#
#
#
# @within function asset:artifact/0916.flame_hunter_clothes/trigger/3.main

# 演出
    particle flame ~ ~1.3 ~ 0.3 0.2 0.3 0 40 normal @a
    particle block azalea ~ ~1.3 ~ 0.3 0.2 0.3 0 80 normal @a
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.2 0
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.4 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1 0