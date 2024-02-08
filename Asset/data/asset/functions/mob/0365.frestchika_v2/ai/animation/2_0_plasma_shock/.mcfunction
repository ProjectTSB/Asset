#> asset:mob/0365.frestchika_v2/ai/animation/2_0_plasma_shock/
#
# プラズマショック
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/

# アニメーション再生
    execute if score @s A5.AnimationTick matches 1 as @e[type=item_display,tag=A5.Root.This,distance=..100] run function animated_java:frestchika_v2/animations/2_0_former_plasma_shock/play

# アニメーション終了処理
    execute if score @s A5.AnimationTick matches 39 run scoreboard players set @s A5.AnimationTick -1