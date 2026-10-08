#> asset:artifact/1581.reactor_plate/trigger/vfx/normal
#
# 攻撃演出
#
# @within function asset:artifact/1581.reactor_plate/trigger/3.main

    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.2 0.8
    playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.4 1.5
    playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.7 1.8
    particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1.0 10 normal
    particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.01 5 normal
