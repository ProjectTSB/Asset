#> asset:artifact/0711.deep_sea_coral_crown/dis_equip
#
# 装備解除時に実行される処理
#
# @within function asset:artifact/alias/711/dis_equip

# 演出
    playsound ogg:block.amethyst.break4 player @a ~ ~ ~ 1 0
    particle splash ~ ~1.7 ~ 0.4 0.2 0.4 0 50 normal @a
