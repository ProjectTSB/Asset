#> asset:mob/0057.none_fighter/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/57/death

# 演出
    particle minecraft:block white_concrete ~ ~1.2 ~ 0.2 0.5 0.2 0 30 normal @a
    playsound minecraft:block.stone.break hostile @a ~ ~ ~ 1 0.5 0
