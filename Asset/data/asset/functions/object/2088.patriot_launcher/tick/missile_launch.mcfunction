#> asset:object/2088.patriot_launcher/tick/missile_launch
#
# 
#
# @within function asset:object/2088.patriot_launcher/tick/tick_active


# sound
playsound entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 1 2 1
playsound minecraft:entity.breeze.death master @a[distance=..50] ~ ~ ~ 1.0 0.5 1

# オブジェクト召喚
data modify storage api: Argument.ID set value 2087
function api:object/summon
