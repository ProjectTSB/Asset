#> asset:mob/0445.sharkboss/vfx
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/

    data modify storage api: Argument.ID set value 2256
    execute positioned ~ ~ ~ run function api:object/summon

playsound minecraft:entity.player.swim hostile @a ~ ~ ~ 0.4 1.3
playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 0.8 0.8

particle splash ~ ~0.5 ~ 0.3 0.3 0.3 1 10 normal
particle minecraft:block cyan_stained_glass ~ ~ ~ 0.6 0.6 0.6 10 10

function asset:mob/0445.sharkboss/tick/action/damage/water_column
