#> asset:mob/0461.nectar_plant/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/461/hurt

# 演出
    playsound block.sweet_berry_bush.break hostile @a ~ ~ ~ 1 0.8
    particle block big_dripleaf ~ ~1.2 ~ 0.4 0.3 0.4 0 10
