#> asset:mob/0393.labyria_first/ai/animation/1_2_ms_idle/
#
# 待機 アニメーション 銃通常
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_1_idle_musket/play

# アニメーション再生
    execute if score @s AX.AnimationTick matches 40 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_1_idle_musket/play

# アニメーション終了処理
    execute if score @s AX.AnimationTick matches 80 run function asset:mob/0393.labyria_first/ai/animation/1_2_ms_idle/end

# バリアント
    execute if score @s AX.AnimationTick matches 20 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/mabataki/apply
    execute if score @s AX.AnimationTick matches 30 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/normal/apply
    execute if score @s AX.AnimationTick matches 60 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/mabataki/apply
    execute if score @s AX.AnimationTick matches 70 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/normal/apply
