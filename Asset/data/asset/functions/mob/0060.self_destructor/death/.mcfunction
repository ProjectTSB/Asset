#> asset:mob/0060.self_destructor/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/60/death

# 演出
    playsound entity.tnt.primed hostile @a ~ ~ ~ 1 0 0
    particle smoke ~ ~1 ~ 0.4 0.8 0.4 0 30 normal @a
