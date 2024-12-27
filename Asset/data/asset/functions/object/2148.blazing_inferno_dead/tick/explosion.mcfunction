#> asset:object/2148.blazing_inferno_dead/tick/explosion
#
# 死亡時のランダムな爆発
#
# @within function asset:object/2148.blazing_inferno_dead/tick/

particle minecraft:explosion ~ ~1.5 ~ 1 1 1 0.5 1 force @a[distance=..32]
particle minecraft:lava ~ ~1.5 ~ 1 1 1 0 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 2
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1
