#> asset:mob/0464.drain_plant/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/464/hurt

# 演出
    playsound minecraft:entity.squid.hurt hostile @a ~ ~ ~ 0.4 0.9
    particle block netherrack ~ ~0.4 ~ 0.6 0.2 0.6 0 10 normal @a
