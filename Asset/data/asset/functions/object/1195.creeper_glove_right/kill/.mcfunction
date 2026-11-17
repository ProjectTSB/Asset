#> asset:object/1195.creeper_glove_right/kill/
#
# 消滅処理
#
# @within function
#   asset:object/1195.creeper_glove_right/tick/
#   asset:object/1195.creeper_glove_right/tick/main

#vfx
    particle explosion ~ ~1 ~ 1.5 1 1.5 0 15 force
    particle large_smoke ~ ~ ~ 0.3 0.3 0.3 0.05 10 normal @a
    playsound entity.creeper.hurt player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.creeper.death player @a ~ ~ ~ 1.0 1 0.0
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.9

#消滅
    kill @s
