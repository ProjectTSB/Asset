#> asset:artifact/0917.flame_hunter_clothes/trigger/vfx
#
#
#
# @within function asset:artifact/0917.flame_hunter_clothes/trigger/3.main

# 演出
    particle flame ~ ~0.5 ~ 0.3 0.2 0.3 0 30 normal @a
    particle block azalea ~ ~0.5 ~ 0.3 0.2 0.3 0 60 normal @a
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.2 0
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.4 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1 0