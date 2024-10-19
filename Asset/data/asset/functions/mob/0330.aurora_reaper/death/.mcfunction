#> asset:mob/0330.aurora_reaper/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/330/death

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.5 0 0.1 0.4 ~ ~1.4 ~ 0.5 0.6 0.5 0 50 normal @a
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.3 1.1 0
