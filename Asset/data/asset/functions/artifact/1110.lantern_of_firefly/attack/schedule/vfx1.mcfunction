#> asset:artifact/1110.lantern_of_firefly/attack/schedule/vfx1
#
# 演出1
#
# @within function asset:artifact/1110.lantern_of_firefly/attack/schedule/

# 演出
    execute anchored eyes positioned ^ ^-1 ^ rotated ~90 30 run function asset:artifact/1110.lantern_of_firefly/attack/vfx/circle2
    execute anchored eyes positioned ^ ^-1 ^ rotated ~90 -30 run function asset:artifact/1110.lantern_of_firefly/attack/vfx/circle2
    playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.25 1.7
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.2
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.1
    playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 1.2 1.0
