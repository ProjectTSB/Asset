#> asset:artifact/0937.ideal_boots/equip
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/937/equip

# 演出
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    execute positioned ~ ~0.2 ~ run function asset:artifact/0937.ideal_boots/vfx
