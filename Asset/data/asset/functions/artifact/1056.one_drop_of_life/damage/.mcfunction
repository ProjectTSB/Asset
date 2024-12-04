#> asset:artifact/1056.one_drop_of_life/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1056/damage/


# 演出
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/1056.one_drop_of_life/damage/vfx/circle1
    execute positioned ~ ~0.4 ~ rotated ~ 0 run function asset:artifact/1056.one_drop_of_life/damage/vfx/circle2
    execute positioned ~ ~0.6 ~ rotated ~ 0 run function asset:artifact/1056.one_drop_of_life/damage/vfx/circle3
    execute rotated ~0 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/damage/vfx/triangle
    execute rotated ~45 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/damage/vfx/triangle
    execute rotated ~90 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/damage/vfx/triangle
    execute rotated ~135 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/damage/vfx/triangle
    execute rotated ~180 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/damage/vfx/triangle
    execute rotated ~225 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/damage/vfx/triangle
    execute rotated ~270 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/damage/vfx/triangle
    execute rotated ~315 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/damage/vfx/triangle
    playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron player @a ~ ~ ~ 2 1
    playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron player @a ~ ~ ~ 2 0.8
    playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron player @a ~ ~ ~ 2 0.6
    playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1 1.5

# 体力を80%回復する
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal float 0.8 run data get storage api: Return.MaxHealth 1
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
