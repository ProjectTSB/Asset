#> asset:artifact/0935.ideal_chestplate/equip
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/935/equip

# 演出
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    execute positioned ~ ~1.2 ~ run function asset:artifact/0935.ideal_chestplate/vfx
