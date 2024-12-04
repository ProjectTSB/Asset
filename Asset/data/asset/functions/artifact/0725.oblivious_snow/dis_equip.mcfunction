#> asset:artifact/0725.oblivious_snow/dis_equip
#
# 装備解除時に実行される処理
#
# @within function asset:artifact/alias/725/dis_equip

# 演出
    particle snowflake ~ ~1.2 ~ 0.4 0.2 0.4 0 50 normal @a
    playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0
