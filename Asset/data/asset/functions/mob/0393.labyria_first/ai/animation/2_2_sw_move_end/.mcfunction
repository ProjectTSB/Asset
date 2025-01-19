#> asset:mob/0393.labyria_first/ai/animation/2_2_sw_move_end/
#
# 移動終了処理（ソード）
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/2_2_sw_move_end/play
# アニメーション終了処理
    execute if score @s AX.AnimationTick matches 25 run function asset:mob/0393.labyria_first/ai/animation/2_2_sw_move_end/end

# バリアント
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/normal/apply
