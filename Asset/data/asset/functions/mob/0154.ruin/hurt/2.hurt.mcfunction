#> asset:mob/0154.ruin/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0154.ruin/hurt/1.trigger

# 演出
    particle dragon_breath ~ ~1.2 ~ 0.4 0.4 0.4 0.05 25
    playsound entity.warden.attack_impact hostile @a ~ ~ ~ 1 0.7
    playsound entity.warden.attack_impact hostile @a ~ ~ ~ 1 0.5