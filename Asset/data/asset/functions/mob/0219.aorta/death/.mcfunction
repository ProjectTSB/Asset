#> asset:mob/0219.aorta/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/219/death

# 演出
    playsound entity.drowned.death hostile @a ~ ~ ~ 0.8 1.2 0
    particle block nether_wart_block ~ ~1.2 ~ 0.3 0.4 0.3 0 60 normal @a
