#> asset:artifact/0777.jade_armor/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/777/equip

# 演出
    particle dust 0.220 0.706 0.545 1 ~ ~0.6 ~ 0.4 0.2 0.4 1 50 normal
    particle rain ~ ~0.6 ~ 0.4 0.2 0.4 0 60 normal @a
    playsound entity.player.splash player @a ~ ~ ~ 0.8 1.7 0
    playsound block.amethyst_block.hit player @a ~ ~ ~ 0.7 1.5 0
