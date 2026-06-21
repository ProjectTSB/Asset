#> asset:artifact/1581.reactor_plate/damage/vfx/explode
#
# 自爆演出
#
# @within function asset:artifact/1581.reactor_plate/damage/3.main


# 演出
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.0 0.8
    playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 2.0 1.0
    particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 normal
    particle minecraft:explosion_emitter ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.5 100 normal
