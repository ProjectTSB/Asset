#> asset:mob/0217.medousa_eye/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/217/hurt

# 演出
    playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 0.7 1
    particle block green_terracotta ~ ~1.68 ~ 0 0 0 0 25
