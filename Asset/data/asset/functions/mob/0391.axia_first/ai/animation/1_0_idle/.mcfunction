#> asset:mob/0391.axia_first/ai/animation/1_0_idle/
#
# 待機アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# ノーマルは80Tick
# ハードは40Tick
# 近くのプレイヤーの方を向く
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/1_0_idle/play

# アニメーション再生
    execute if predicate api:global_vars/difficulty/max/normal if score @s AV.AnimationTick matches 40 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/1_0_idle/play

# アニメーション終了処理
    execute if predicate api:global_vars/difficulty/min/hard if score @s AV.AnimationTick matches 40 run function asset:mob/0391.axia_first/ai/animation/1_0_idle/end

# アニメーション終了処理
    execute if predicate api:global_vars/difficulty/max/normal if score @s AV.AnimationTick matches 80 run function asset:mob/0391.axia_first/ai/animation/1_0_idle/end

# バリアント
    execute if score @s AV.AnimationTick matches 20 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mabataki/apply
    execute if score @s AV.AnimationTick matches 30 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
    execute if score @s AV.AnimationTick matches 60 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mabataki/apply
    execute if score @s AV.AnimationTick matches 70 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
