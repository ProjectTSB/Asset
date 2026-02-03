#> asset:effect/0324.scripture_gambling/end/success
#
#
#
# @within function asset:effect/0324.scripture_gambling/end/

# 演出
    execute rotated ~ 0 anchored eyes positioned ^ ^-0.5 ^ rotated ~90 15 run function asset:effect/0324.scripture_gambling/end/vfx
    execute rotated ~ 0 anchored eyes positioned ^ ^-0.5 ^ rotated ~90 -15 run function asset:effect/0324.scripture_gambling/end/vfx
    playsound ogg:block.amethyst.resonate1 player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1.5
