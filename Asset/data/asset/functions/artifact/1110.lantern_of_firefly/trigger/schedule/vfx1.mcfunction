#> asset:artifact/1110.lantern_of_firefly/trigger/schedule/vfx1
#
#
#
# @within function asset:artifact/1110.lantern_of_firefly/trigger/schedule/

    execute anchored eyes positioned ^ ^-0.3 ^ rotated ~90 30 run function asset:artifact/1110.lantern_of_firefly/trigger/vfx
    execute anchored eyes positioned ^ ^-0.3 ^ rotated ~90 -30 run function asset:artifact/1110.lantern_of_firefly/trigger/vfx

    playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.25 1.8
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.2
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.1
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.0
