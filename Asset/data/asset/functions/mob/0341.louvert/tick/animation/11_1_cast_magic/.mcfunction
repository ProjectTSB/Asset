#> asset:mob/0341.louvert/tick/animation/11_1_cast_magic/
#
# 汎用魔法実行アニメーション
#
# @within function asset:mob/0341.louvert/tick/animation/

# 回転
    tag @s add 9H.Temp.This
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/11_1_cast_magic/play

# 演出
    execute if score @s 9H.AnimationTick matches 28 run playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.75 2 0

# 演出
    execute if score @s 9H.AnimationTick matches 41 positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/11_1_cast_magic/vfx

# 火炎陣 発動 （ハードだと2倍）
    execute if score @s 9H.AnimationTick matches 41 at @a[tag=!PlayerShouldInvulnerable,distance=..32,sort=random,limit=3] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/11_1_cast_magic/summon
    execute if score @s 9H.AnimationTick matches 41 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/11_1_cast_magic/summon_hard

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 56 run function asset:mob/0341.louvert/tick/general/9.animation_end
