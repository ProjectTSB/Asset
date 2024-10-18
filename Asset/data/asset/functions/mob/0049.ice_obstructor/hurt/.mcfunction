#> asset:mob/0049.ice_obstructor/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/49/hurt

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1.2 1.3 0
    particle block ice ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a
