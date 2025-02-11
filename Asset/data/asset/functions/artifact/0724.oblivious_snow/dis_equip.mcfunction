#> asset:artifact/0724.oblivious_snow/dis_equip
#
# 装備解除時に実行される処理
#
# @within function asset:artifact/alias/724/dis_equip

# 演出
    particle snowflake ~ ~1.7 ~ 0.4 0.1 0.4 0 50 normal @a
    playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0
