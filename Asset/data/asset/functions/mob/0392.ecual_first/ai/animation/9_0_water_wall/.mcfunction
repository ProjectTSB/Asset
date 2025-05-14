#> asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/
#
# ウォーターウォール アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s AW.AnimationTick matches 1..36 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/general/2.rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 1..36 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/predict/
    execute if score @s AW.AnimationTick matches 71..96 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/9_0_water_wall/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 96 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/end

# 予告線
    execute if score @s AW.AnimationTick matches 16 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/announce

# ウォーターウォール 発動
    execute positioned ^ ^ ^1 if score @s AW.AnimationTick matches 38 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^4 if score @s AW.AnimationTick matches 41 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^7 if score @s AW.AnimationTick matches 44 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^10 if score @s AW.AnimationTick matches 47 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^13 if score @s AW.AnimationTick matches 50 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^16 if score @s AW.AnimationTick matches 53 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^19 if score @s AW.AnimationTick matches 56 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^22 if score @s AW.AnimationTick matches 59 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^25 if score @s AW.AnimationTick matches 62 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^28 if score @s AW.AnimationTick matches 65 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon
    execute positioned ^ ^ ^31 if score @s AW.AnimationTick matches 68 run function asset:mob/0392.ecual_first/ai/animation/9_0_water_wall/summon

# バリアント
    execute if score @s AW.AnimationTick matches 20 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/majime/apply
    execute if score @s AW.AnimationTick matches 85 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
