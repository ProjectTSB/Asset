#> asset:artifact/1056.one_drop_of_life/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1056.one_drop_of_life/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/circle1
    execute positioned ~ ~0.4 ~ rotated ~ 0 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/circle2
    execute positioned ~ ~0.6 ~ rotated ~ 0 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/circle3
    execute rotated ~0 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/triangle
    execute rotated ~45 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/triangle
    execute rotated ~90 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/triangle
    execute rotated ~135 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/triangle
    execute rotated ~180 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/triangle
    execute rotated ~225 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/triangle
    execute rotated ~270 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/triangle
    execute rotated ~315 0 positioned ^ ^0.8 ^2 rotated ~ -70 run function asset:artifact/1056.one_drop_of_life/trigger/vfx/triangle
    playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron player @a ~ ~ ~ 2 1
    playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron player @a ~ ~ ~ 2 0.8
    playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron player @a ~ ~ ~ 2 0.6
    playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1 1.5

# 体力を80%回復する
    execute store result storage api: Argument.Heal float 0.8 run attribute @s generic.max_health get
    function api:heal/modifier
    function api:heal/
    function api:heal/reset