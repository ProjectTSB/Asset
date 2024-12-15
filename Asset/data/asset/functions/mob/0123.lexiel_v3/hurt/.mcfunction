#> asset:mob/0123.lexiel_v3/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/123/hurt

function asset:mob/super.hurt

# 演出
    playsound minecraft:entity.generic.hurt hostile @a ~ ~ ~ 1 0.7
