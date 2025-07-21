#> asset:mob/0147.prismarine_slayer/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/147/hurt

# 演出
    particle dust 0.078 0.471 0.486 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 1 20 normal @a
    playsound minecraft:entity.guardian.hurt hostile @a ~ ~ ~ 0.6 1 0
    playsound minecraft:entity.generic.swim hostile @a ~ ~ ~ 0.5 0.7 0

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# バフ
    effect give @s speed 2 1 true
    effect give @s jump_boost 2 1 true
