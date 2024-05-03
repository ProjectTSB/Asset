#> asset:mob/0336.cherry_blossom_fairy/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0336.cherry_blossom_fairy/death/1.trigger

# 演出
    particle cherry_leaves ~ ~1 ~ 0.5 1 0.5 0 20 normal
    playsound ogg:ambient.nether.crimson_forest.shine3 hostile @a[distance=..32] ~ ~ ~ 2 2 0