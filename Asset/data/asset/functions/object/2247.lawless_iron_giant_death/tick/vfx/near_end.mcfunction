#> asset:object/2247.lawless_iron_giant_death/tick/vfx/near_end
#
#
#
# @within function asset:object/2247.lawless_iron_giant_death/tick/


particle minecraft:explosion ~ ~ ~ 1 0.2 1 0.5 1 force @a[distance=..32]
particle minecraft:lava ~ ~ ~ 1 0.2 1 0 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 2
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1
