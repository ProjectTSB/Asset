#> asset:mob/0166.flying_potion/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/166/death

# 演出
    particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 100
    playsound entity.splash_potion.break hostile @a ~ ~ ~ 1 1
