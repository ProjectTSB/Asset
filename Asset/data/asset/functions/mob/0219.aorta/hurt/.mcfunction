#> asset:mob/0219.aorta/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/219/hurt

# 演出
    particle dust 0.769 0 0 1 ~ ~1 ~ 0.6 0.6 0.6 0 50 normal @a
    playsound block.conduit.ambient hostile @a ~ ~ ~ 0.8 1.5 0

# ノーマル以上なら移動速度上昇を得る
    execute if data storage asset:context Hurt{IsDoT:false} if predicate api:global_vars/difficulty/min/2_hard run effect give @s speed 3 0 true

# Deathでないかつノーマル以上なら自身の現在体力をチェックする
    execute if entity @s[tag=!Death] if predicate api:global_vars/difficulty/min/2_hard run function asset:mob/0219.aorta/hurt/check_health
