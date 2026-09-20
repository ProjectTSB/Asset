#> asset:artifact/1570.pile_of_accumulated_dust/trigger/vfx
#
# vfx
#
# @within function asset:artifact/1570.pile_of_accumulated_dust/trigger/3.main

    playsound tsb_sounds:rifle_shot player @a ~ ~ ~ 5 0.5 0.0
    playsound minecraft:item.trident.hit player @a ~ ~ ~ 1 0.6 0.0
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 5 0.6 0.0
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 5 0.5 0.0
    particle minecraft:dust_plume ~ ~1 ~ 0 0 0 0.1 40 normal @a
    particle minecraft:dust_plume ~ ~1 ~ 0 0 0 0.3 40 normal @a
    particle minecraft:dust_plume ~ ~1 ~ 0 0 0 0.6 40 normal @a
