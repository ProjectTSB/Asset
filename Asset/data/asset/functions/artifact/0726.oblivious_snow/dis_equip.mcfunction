#> asset:artifact/0726.oblivious_snow/dis_equip
#
# 装備解除時に実行される処理
#
# @within function asset:artifact/alias/726/dis_equip

# 演出
    particle snowflake ~ ~0.5 ~ 0.4 0.15 0.4 0 50 normal @a
    playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0
