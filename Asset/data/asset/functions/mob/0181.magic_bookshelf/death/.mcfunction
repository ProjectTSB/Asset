#> asset:mob/0181.magic_bookshelf/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0181.magic_bookshelf/_/death

# 演出
    particle witch ~ ~1.2 ~ 0.5 0.4 0.5 0 40 normal @a
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.8 0.6 0
