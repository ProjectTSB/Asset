#> asset:artifact/1110.lantern_of_firefly/trigger/schedule/vfx2
#
# 演出2
#
# @within function asset:artifact/1110.lantern_of_firefly/trigger/schedule/

# 演出
    execute anchored eyes positioned ^ ^-1 ^ rotated ~90 30 run function asset:artifact/1110.lantern_of_firefly/trigger/vfx/circle3
    execute anchored eyes positioned ^ ^-1 ^ rotated ~90 -30 run function asset:artifact/1110.lantern_of_firefly/trigger/vfx/circle3
    playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.25 2.0
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.2
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.1
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.0
