#> asset:mob/0341.louvert/tick/animation/7_1_soul_cast/
#
# クラピみたいなソウルブラスト
#
# @within function asset:mob/0341.louvert/tick/animation/

# 回転
    tag @s add 9H.Temp.This
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/07_1_soul_magic_cast/play

# 音
    execute if score @s 9H.AnimationTick matches 10..40 run function asset:mob/0341.louvert/tick/general/13.power_sound/

# 音
    execute if score @s 9H.AnimationTick matches 50 run playsound item.trident.throw hostile @a[distance=..32] ~ ~ ~ 0.75 0.5 0

# ソウルブラスト発射
    execute if score @s 9H.AnimationTick matches 50 at @a[tag=!PlayerShouldInvulnerable,distance=..32,sort=random,limit=1] positioned ~ ~0.5 ~ run function asset:mob/0341.louvert/tick/animation/7_1_soul_cast/soul_summon

# 移動と終了
    execute if score @s 9H.AnimationTick matches 71 run function asset:mob/0341.louvert/tick/general/9.animation_end
