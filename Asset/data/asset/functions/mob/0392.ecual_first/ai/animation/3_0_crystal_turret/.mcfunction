#> asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/
#
# クリスタル召喚 アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/3_0_crystal_turret/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 81 run function asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/end

# クリスタルタレット召喚
    execute if score @s AW.AnimationTick matches 49 if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/summon/normal
    execute if score @s AW.AnimationTick matches 49 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0392.ecual_first/ai/animation/3_0_crystal_turret/summon/hard

# バリアント
    execute if score @s AW.AnimationTick matches 10 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/majime/apply
    execute if score @s AW.AnimationTick matches 70 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
