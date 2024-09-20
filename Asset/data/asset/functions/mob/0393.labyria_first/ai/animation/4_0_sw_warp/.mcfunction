#> asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/
#
# ワープ斬り
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    tag @s add AZ.Temp.This
    execute if score @s AZ.AnimationTick matches 1..40 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    execute if score @s AZ.AnimationTick matches 70..85 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    tag @s remove AZ.Temp.This

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 1 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/4_0_sw_warp_1/play

# ワープ
    execute if score @s AZ.AnimationTick matches 33 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/warp/adj

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 35 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/4_1_sw_warp_2/play

# 斬撃エフェクト表示
    execute if score @s AZ.AnimationTick matches 47 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/slash_effect/1

# ダメージ処理
    execute if score @s AZ.AnimationTick matches 49 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/damage

# 斬撃エフェクト表示
    execute if score @s AZ.AnimationTick matches 54 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/slash_effect/2

# ダメージ処理
    execute if score @s AZ.AnimationTick matches 56 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/damage

# 終了処理
    execute if score @s AZ.AnimationTick matches 85 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/end
