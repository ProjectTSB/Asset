#> asset:mob/0445.sharkboss/vfx
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/

    data modify storage api: Argument.ID set value 2256
    execute positioned ~ ~ ~ run function api:object/summon

playsound minecraft:entity.player.swim hostile @a ~ ~ ~ 0.6 1.3
playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 1 0.8
