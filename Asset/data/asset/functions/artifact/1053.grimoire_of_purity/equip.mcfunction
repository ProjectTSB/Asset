#> asset:artifact/1053.grimoire_of_purity/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/1053/equip

# 演出
    execute positioned ~ ~1.3 ~ rotated ~ ~45 run function asset:artifact/1053.grimoire_of_purity/equip_vfx
    execute positioned ~ ~1.3 ~ rotated ~ ~-45 run function asset:artifact/1053.grimoire_of_purity/equip_vfx
    playsound block.beacon.power_select player @a ~ ~1.3 ~ 1 1.3
    playsound block.amethyst_block.resonate player @a ~ ~1.3 ~ 4 1.5
    playsound block.bell.resonate player @a ~ ~ ~ 3 2
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 3 1.7
