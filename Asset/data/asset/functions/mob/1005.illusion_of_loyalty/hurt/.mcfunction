#> asset:mob/1005.illusion_of_loyalty/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/1005/hurt

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1 2

# super
    function asset:mob/super.hurt
