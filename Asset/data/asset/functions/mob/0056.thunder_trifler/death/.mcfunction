#> asset:mob/0056.thunder_trifler/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/56/death

# 演出
    particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.0 0
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 0.8 0
