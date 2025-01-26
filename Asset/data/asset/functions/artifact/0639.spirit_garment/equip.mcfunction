#> asset:artifact/0639.spirit_garment/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/639/equip

# 演出
    particle scrape ~ ~1.2 ~ 0.3 0.2 0.3 1.6 10 normal @a
    particle wax_off ~ ~1.2 ~ 0.3 0.2 0.3 1.6 10 normal @a
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1 2
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1 1.7
    playsound block.amethyst_block.break player @a ~ ~ ~ 1 0.8
