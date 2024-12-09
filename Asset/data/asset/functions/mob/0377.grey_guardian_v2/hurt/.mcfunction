#> asset:mob/0377.grey_guardian_v2/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/377/hurt

function asset:mob/super.hurt

# 演出
    playsound minecraft:entity.skeleton.converted_to_stray hostile @a ~ ~ ~ 1 0

