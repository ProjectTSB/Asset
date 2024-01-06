#> asset:mob/0336.cherry_blossom_fairy/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0336.cherry_blossom_fairy/hurt/1.trigger

# 演出
    particle cherry_leaves ~ ~1 ~ 0.5 1 0.5 0 20 normal
    playsound ogg:ambient.nether.crimson_forest.shine3 hostile @a[distance=..32] ~ ~ ~ 2 2 0