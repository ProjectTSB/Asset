#> asset:artifact/0936.ideal_leggings/equip
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/936/equip

# 演出
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    execute positioned ~ ~0.5 ~ run function asset:artifact/0936.ideal_leggings/vfx
