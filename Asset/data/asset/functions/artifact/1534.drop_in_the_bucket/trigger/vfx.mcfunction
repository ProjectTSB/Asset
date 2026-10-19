#> asset:artifact/1534.drop_in_the_bucket/trigger/vfx
#
# vfx
#
# @within function asset:artifact/1534.drop_in_the_bucket/trigger/3.main

# sound
    playsound minecraft:entity.tropical_fish.flop player @a ~ ~ ~ 5 1.6 0.0
# particle
    $particle block lapis_block ~ ~1 ~ 0 0 0 1 $(count)
