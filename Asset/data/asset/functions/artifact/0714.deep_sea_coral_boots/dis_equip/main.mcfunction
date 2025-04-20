#> asset:artifact/0714.deep_sea_coral_boots/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0714.deep_sea_coral_boots/dis_equip/

# 演出
    playsound ogg:block.amethyst.break4 player @a ~ ~ ~ 1 0
    particle splash ~ ~0.2 ~ 0.4 0.1 0.4 0 50 normal @a
