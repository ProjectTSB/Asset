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
    execute as @a[distance=..25] at @s facing entity @e[type=zombie,tag=this,distance=..25] eyes positioned ^ ^ ^0.3 run playsound minecraft:entity.elder_guardian.death hostile @s ~ ~ ~ 0.4 2 0

# リセット
    function asset:mob/0217.medousa_eye/tick/reset
