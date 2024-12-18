#> asset:mob/0392.ecual_first/ai/animation/1_2_idle_long/
#
# 待機 アニメーション ロング
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/1_0_idle/play

# アニメーション再生
    execute if score @s AW.AnimationTick matches 39 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/1_0_idle/play

# アニメーション再生
    execute if score @s AW.AnimationTick matches 77 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/1_0_idle/play

# アニメーション再生
    execute if score @s AW.AnimationTick matches 115 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/1_0_idle/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 153 run function asset:mob/0392.ecual_first/ai/animation/1_2_idle_long/end

# バリアント
    execute if score @s AW.AnimationTick matches 20 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 30 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
    execute if score @s AW.AnimationTick matches 60 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 70 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
    execute if score @s AW.AnimationTick matches 100 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 110 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
    execute if score @s AW.AnimationTick matches 140 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 150 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
