#> asset:artifact/0918.flame_hunter_boots/trigger/vfx
#
#
#
# @within function asset:artifact/0918.flame_hunter_boots/trigger/3.main

# 演出
    particle flame ~ ~0.2 ~ 0.3 0.1 0.3 0 30 normal @a
    particle block azalea ~ ~0.2 ~ 0.3 0.1 0.3 0 60 normal @a
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.2 0
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.4 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1 0