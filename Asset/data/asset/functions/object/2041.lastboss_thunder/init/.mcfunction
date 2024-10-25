#> asset:object/2041.lastboss_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2041/init

# 一回だけ演出が見える
    execute rotated 0 0 run function asset:object/2041.lastboss_thunder/init/shape

# 毎回同じ向きってのも味気ないので、向きを変えておく
    execute facing entity @p feet run tp @s ~ ~ ~ ~ 0

# サウンド
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 1 2
