#> asset:object/2106.convict_dead/tick/vfx
#
#
#
# @within function asset:object/2106.convict_dead/tick/

# 演出
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    particle minecraft:block minecraft:blackstone ~ ~1.8 ~ 0.35 0.35 0.35 2 100
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound entity.wither_skeleton.death hostile @a ~ ~ ~ 1 1
