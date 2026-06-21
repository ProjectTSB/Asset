#> asset:artifact/1581.reactor_plate/damage/vfx/exhaust
#
# 排熱演出
#
# @within function asset:artifact/1581.reactor_plate/damage/dis_equip/main


# 演出
    playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0.8
    particle minecraft:cloud ~ ~1 ~ 0.15 0.15 0.15 0.08 15 normal
    particle minecraft:smoke ~ ~1 ~ 0.25 0.5 0.25 0.02 8 normal
    particle minecraft:poof ~ ~1 ~ 0.15 0.15 0.15 0.04 6 normal
