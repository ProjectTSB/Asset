#> asset:mob/0227.frost_eye/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0227.frost_eye/_/hurt

# 演出
    particle snowflake ~ ~1.7 ~ 1.2 0.1 1.2 0 70 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0

# 周囲に鈍足
    effect give @a[gamemode=!spectator,distance=..3] slowness 4 3 true
