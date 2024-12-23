#> asset:mob/0151.recombined/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/151/death

# 演出
    particle block redstone_block ~ ~1.3 ~ 0 0 0 1 100
    playsound entity.ravager.death hostile @a
