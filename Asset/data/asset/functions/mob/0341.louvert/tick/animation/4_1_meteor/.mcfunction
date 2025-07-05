#> asset:mob/0341.louvert/tick/animation/4_1_meteor/
#
# メテオ アニメーション
#
# @within function asset:mob/0341.louvert/tick/animation/

# 回転
    tag @s add 9H.Temp.This
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/04_1_flame_magic_cast/play

# 音
    execute if score @s 9H.AnimationTick matches 10..35 run function asset:mob/0341.louvert/tick/general/13.power_sound/

# 音
    execute if score @s 9H.AnimationTick matches 50 run playsound item.trident.throw hostile @a[distance=..32] ~ ~ ~ 0.75 0.5 0

# メテオ発射
    execute if score @s 9H.AnimationTick matches 50 at @a[tag=!PlayerShouldInvulnerable,distance=..32,sort=random,limit=2] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/4_1_meteor/meteor_summon_point

# メテオ発射
    execute if score @s 9H.AnimationTick matches 55 at @a[tag=!PlayerShouldInvulnerable,distance=..32,sort=random,limit=2] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/4_1_meteor/meteor_summon_point

# メテオ発射
    execute if score @s 9H.AnimationTick matches 60 at @a[tag=!PlayerShouldInvulnerable,distance=..32,sort=random,limit=2] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/4_1_meteor/meteor_summon_point

# 音
    execute if score @s 9H.AnimationTick matches 70 run playsound item.trident.riptide_3 hostile @a[distance=..32] ~ ~ ~ 0.75 0.8 0

# ソウルブラスト発射
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 9H.AnimationTick matches 70 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~0.5 ~ run function asset:mob/0341.louvert/tick/animation/4_1_meteor/soul_blast

# 移動と終了
    execute if score @s 9H.AnimationTick matches 86 run function asset:mob/0341.louvert/tick/general/9.animation_end
