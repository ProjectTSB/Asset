#> asset:mob/0217.medousa_eye/tick/beam/
#
# ビーム発射
#
# @within function asset:mob/0217.medousa_eye/tick/

# 石化ビーム発射
    execute positioned ^ ^1.7 ^ run function asset:mob/0217.medousa_eye/tick/beam/recursive

# ビームのヒット処理
    execute as @a[tag=LandingTarget,distance=..20] at @s run function asset:mob/0217.medousa_eye/tick/beam/hit

# 音
    playsound minecraft:entity.elder_guardian.death hostile @a[distance=..25] ~ ~ ~ 1.2 2 0

# リセット
    function asset:mob/0217.medousa_eye/tick/reset
