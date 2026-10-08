#> asset:artifact/1581.reactor_plate/trigger/vfx/special1
#
# 攻撃演出
#
# @within function asset:artifact/1581.reactor_plate/trigger/crit


# 演出
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 1.5
    playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1.5 0.7
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.2 0.9
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.0 0.6
    particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.05 50 normal
    particle minecraft:flame ~ ~1 ~ 1 0.5 1 0.2 100
    particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.05 30
    particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10
