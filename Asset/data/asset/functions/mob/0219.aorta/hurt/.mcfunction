#> asset:mob/0219.aorta/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0219.aorta/_/hurt

# 演出
    particle dust 0.769 0 0 1 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a
    playsound block.conduit.ambient hostile @a ~ ~ ~ 0.8 1.5 0

# ノーマル以上なら移動速度上昇を得る
    execute if predicate api:global_vars/difficulty/min/normal run effect give @s speed 3 1 true

# ノーマル以上なら、自身の現在体力をチェックする
    execute if predicate api:global_vars/difficulty/min/normal run function asset:mob/0219.aorta/hurt/check_health
