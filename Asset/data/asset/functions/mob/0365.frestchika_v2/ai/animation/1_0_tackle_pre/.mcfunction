#> asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/
#
# アニメーション分岐
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/

# プレイヤーの周りにTP
    execute if score @s A5.AnimationTick matches 1 run function asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/tp_around

# アニメーション再生
    execute if score @s A5.AnimationTick matches 1 as @e[type=item_display,tag=A5.Root.This,distance=..100] run function animated_java:frestchika_v2/animations/1_0_former_tackle_pre/play

# ギリギリまでこちらを向く
    execute if score @s A5.AnimationTick matches 2..20 run function asset:mob/0365.frestchika_v2/ai/general/2.rotate

# アニメーション終了処理
    execute if score @s A5.AnimationTick matches 20 run scoreboard players set @s A5.AnimationNum 11
    execute if score @s A5.AnimationTick matches 20 run scoreboard players set @s A5.AnimationTick 0