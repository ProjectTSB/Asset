#> asset:mob/0171.lumberjack_of_blue_forest/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/171/hurt

# 演出
    playsound block.stem.break hostile @a ~ ~ ~ 0.7 0 0
    particle block warped_stem ~ ~1.2 ~ 0.4 0.6 0.4 0 40 normal @a

# 加速
    effect give @s speed 1 1 true
