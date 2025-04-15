#> asset:mob/0220.vena_cana/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/220/hurt

# 演出
    playsound minecraft:block.conduit.ambient hostile @a ~ ~ ~ 0.7 0.8 0
    particle dust 0.149 0.682 0.741 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 10 normal @a
