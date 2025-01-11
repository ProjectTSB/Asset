#> asset:mob/0393.labyria_first/ai/animation/2_1_ms_move_start/
#
# 移動開始処理（マスケット）
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/2_1_ms_move_start/play

# アニメーション終了処理
    execute if score @s AX.AnimationTick matches 25 run function asset:mob/0393.labyria_first/ai/animation/2_0_sw_move_start/end

# バリアント
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/majime/apply
