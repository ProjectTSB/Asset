#> asset:artifact/0712.deep_sea_coral_raiment/dis_equip
#
# 装備解除時に実行される処理
#
# @within function asset:artifact/alias/712/dis_equip

# 演出
    playsound ogg:block.amethyst.break4 player @a ~ ~ ~ 1 0
    particle splash ~ ~1.2 ~ 0.4 0.3 0.4 0 50 normal @a
