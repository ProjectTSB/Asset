#> asset:mob/0331.aurora_sorcerer/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/331/hurt

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.3 0 0.235 1 ~ ~1.4 ~ 0.5 0.6 0.5 0 30 normal @a
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.3 1.4 0
