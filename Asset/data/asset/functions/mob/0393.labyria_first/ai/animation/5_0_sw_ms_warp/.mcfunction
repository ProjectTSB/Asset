#> asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/
#
# 居合射撃
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute if score @s AX.AnimationTick matches 1..53 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    execute if score @s AX.AnimationTick matches 80..92 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 93..124 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    execute if score @s AX.AnimationTick matches 125..130 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    execute if score @s AX.AnimationTick matches 160..175 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/11_0_sw_sg_warp_1/play

# ワープ
    execute if score @s AX.AnimationTick matches 45 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/warp/adj

# アニメーション再生
    execute if score @s AX.AnimationTick matches 47 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/11_1_sw_sg_warp_2/play

# 斬撃エフェクト表示
    execute if score @s AX.AnimationTick matches 53 run function asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/slash_effect/1

# ダメージ処理
    execute if score @s AX.AnimationTick matches 55 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/damage

# 斬撃エフェクト表示
    execute if score @s AX.AnimationTick matches 67 run function asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/slash_effect/1

# ダメージ処理
    execute if score @s AX.AnimationTick matches 69 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/damage

# ワープする
    execute if score @s AX.AnimationTick matches 78 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/

# アニメーション再生
    execute if score @s AX.AnimationTick matches 80 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/11_2_sw_sg_warp_3/play

# 銃発射
    execute if score @s AX.AnimationTick matches 94 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/

# 銃発射
    execute if score @s AX.AnimationTick matches 101 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/

# 銃発射
    execute if score @s AX.AnimationTick matches 108 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/

# ワープ
    execute if score @s AX.AnimationTick matches 123 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/warp/adj

# アニメーション再生
    execute if score @s AX.AnimationTick matches 125 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/4_1_sw_warp_2/play

# 斬撃エフェクト表示
    execute if score @s AX.AnimationTick matches 137 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/slash_effect/1

# ダメージ処理
    execute if score @s AX.AnimationTick matches 139 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/damage

# 斬撃エフェクト表示
    execute if score @s AX.AnimationTick matches 144 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/slash_effect/2

# ダメージ処理
    execute if score @s AX.AnimationTick matches 146 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/damage

# 終了処理
    execute if score @s AX.AnimationTick matches 175 run function asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/end

# バリアント
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/majime/apply
    execute if score @s AX.AnimationTick matches 165 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/normal/apply
