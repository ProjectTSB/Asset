#> asset:mob/0154.ruin/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0154.ruin/death/1.trigger

# 演出
    playsound entity.warden.hurt hostile @a ~ ~ ~ 1 0.5 0
    playsound entity.warden.hurt hostile @a ~ ~ ~ 1 0.7 0
    particle dragon_breath ~ ~1 ~ 0.4 0.4 0.4 0.05 100
    particle explosion ~ ~1 ~ 0.2 0.1 0.2 0 4 normal @a