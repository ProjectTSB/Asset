#> asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/
#
# オープニングの演出
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/

# アニメーション再生
    execute if score @s A5.AnimationTick matches 1 as @e[type=item_display,tag=A5.Root.This,distance=..100] run function animated_java:frestchika_v2/animations/200_0_opening/play

# 溜め音
    execute if score @s A5.AnimationTick matches 11..21 run function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/1.charge_sound_calc

# 雷
    execute if score @s A5.AnimationTick matches 33 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1.2
    execute if score @s A5.AnimationTick matches 36 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1.3
    execute if score @s A5.AnimationTick matches 39 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1.4

# 雷バリバリ演出
    execute if score @s A5.AnimationTick matches 38 rotated ~10 ~ positioned ~ ~1 ~ run function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/3.particle
    execute if score @s A5.AnimationTick matches 41 rotated ~20 ~ positioned ~ ~1 ~ run function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/3.particle
    execute if score @s A5.AnimationTick matches 44 rotated ~30 ~ positioned ~ ~1 ~ run function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/3.particle

# ゼクスサンダー召喚
    execute if score @s A5.AnimationTick matches 35 run function asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/4.thunder_summon

# アニメーション終了処理
    execute if score @s A5.AnimationTick matches 66 run scoreboard players set @s A5.AnimationTick -1