#> asset:object/1060.medic/tick/remove
#
#
#
# @within function asset:object/1060.medic/tick/

# 演出
    playsound minecraft:entity.allay.death neutral @a ~ ~ ~ 1 1.6
    particle minecraft:enchant ~ ~1 ~ 0.2 0.5 0.2 0 100
# 死
    kill @s
