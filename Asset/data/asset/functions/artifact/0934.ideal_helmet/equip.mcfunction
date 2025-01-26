#> asset:artifact/0934.ideal_helmet/equip
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/934/equip

# 演出
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    execute positioned ~ ~1.8 ~ run function asset:artifact/0934.ideal_helmet/vfx
