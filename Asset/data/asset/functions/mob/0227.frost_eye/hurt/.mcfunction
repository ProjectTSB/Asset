#> asset:mob/0227.frost_eye/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/227/hurt

# 演出
    particle snowflake ~ ~1.7 ~ 0.2 0.2 0.2 0.2 20 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0

# 難易度がハード以上なら鈍足を付与
    # execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0227.frost_eye/hurt/debuff
