#> asset:mob/0255.dependence_eye/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/255/death

# 演出
    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 1.5 1
    particle block redstone_wire ~ ~1.68 ~ 0 0 0 0 25
