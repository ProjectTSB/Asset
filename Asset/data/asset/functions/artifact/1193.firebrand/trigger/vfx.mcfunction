#> asset:artifact/1193.firebrand/trigger/vfx
#
# playsoundも使ってるので厳密にはvfxではない
#
# @within function asset:artifact/1193.firebrand/trigger/3.main

# 演出
    particle flame ~ ~3 ~ 0.4 2 0.4 0.05 120 normal @a
    particle lava ~ ~0.2 ~ 0.4 0 0.4 0.05 20 normal @a
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.7 0
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.6 0
    playsound entity.blaze.hurt player @a ~ ~ ~ 0.6 0.7 0
    playsound entity.blaze.hurt player @a ~ ~ ~ 0.6 0.65 0
    playsound entity.blaze.hurt player @a ~ ~ ~ 0.6 0.6 0
