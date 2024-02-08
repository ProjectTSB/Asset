#> asset:mob/0365.frestchika_v2/ai/animation/1_2_tackle_slash/
#
# 二連突進 斬撃
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/

# アニメーション再生
    execute if score @s A5.AnimationTick matches 1 as @e[type=item_display,tag=A5.Root.This,distance=..100] run function animated_java:frestchika_v2/animations/1_2_former_tackle_slash/play

# 演出
    execute if score @s A5.AnimationTick matches 1 run playsound item.trident.return hostile @a ~ ~ ~ 1 2
    execute if score @s A5.AnimationTick matches 5 run playsound item.trident.return hostile @a ~ ~ ~ 1 2
    execute if score @s A5.AnimationTick matches 18 run playsound item.trident.return hostile @a ~ ~ ~ 1 2

# ダメージ
    execute if score @s A5.AnimationTick matches 3 run function asset:mob/0365.frestchika_v2/ai/animation/1_2_tackle_slash/damage
    execute if score @s A5.AnimationTick matches 8 run function asset:mob/0365.frestchika_v2/ai/animation/1_2_tackle_slash/damage
    execute if score @s A5.AnimationTick matches 20 run function asset:mob/0365.frestchika_v2/ai/animation/1_2_tackle_slash/damage2

# アニメーション終了処理
    execute if score @s A5.AnimationTick matches 35 run scoreboard players set @s A5.AnimationTick -1