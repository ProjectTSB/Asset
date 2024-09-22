#> asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/
#
# 雷神無双
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 1 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/7_0_sw_lightning_fast_start/play

# 範囲外にワープする
    execute if score @s AZ.AnimationTick matches 57 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/start

# 範囲外からワープして戻って来る
    execute if score @s AZ.AnimationTick matches 274 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/end1
    execute if score @s AZ.AnimationTick matches 275 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/end2

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 275 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/2_2_sw_move_end/play

# 終了処理
    execute if score @s AZ.AnimationTick matches 300 run function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/end
