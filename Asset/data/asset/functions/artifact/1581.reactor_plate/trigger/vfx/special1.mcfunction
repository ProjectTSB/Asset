#> asset:artifact/1581.reactor_plate/trigger/vfx/special1
#
# 攻撃演出
#
# @within function asset:artifact/1581.reactor_plate/trigger/crit


    playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.8
    particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.05 50 normal
    particle minecraft:flame ~ ~1 ~ 1 0.5 1 0.2 100
    particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.05 30
    particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10
