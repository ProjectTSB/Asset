#> asset:object/2250.clock_fire/tick/vfx
#
#
#
# @within function asset:object/2250.clock_fire/tick/blast

particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 20
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.3 120
particle minecraft:flame ~ ~ ~ 0 0 0 0.3 200
particle minecraft:lava ~ ~ ~ 1 1 1 0.42 30
playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
playsound entity.generic.explode hostile @a ~ ~ ~ 1 0
