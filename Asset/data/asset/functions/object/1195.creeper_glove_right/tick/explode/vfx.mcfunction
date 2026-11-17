#> asset:object/1195.creeper_glove_right/tick/explode/vfx
#
# 
#
# @within function asset:object/1195.creeper_glove_right/tick/explode/

    particle explosion ~ ~ ~ 0 0 0 0 1 normal @a
    particle dust 0.35 0.8 0.3 1.5 ~ ~ ~ 0.6 0.6 0.6 0 10 normal @a
    particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.05 10 normal @a
    playsound entity.generic.explode player @a ~ ~ ~ 0.5 1.3
    playsound entity.creeper.hurt player @a ~ ~ ~ 0.6 0.8
