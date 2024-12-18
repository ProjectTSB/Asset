#> asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/
#
# 銃三連射
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute if score @s AX.AnimationTick matches 1..45 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    execute if score @s AX.AnimationTick matches 65..75 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    execute if score @s AX.AnimationTick matches 95..105 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    execute if score @s AX.AnimationTick matches 135.. as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/3_0_ms_warp_1/play

# ワープする
    execute if score @s AX.AnimationTick matches 33 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/

# アニメーション再生
    execute if score @s AX.AnimationTick matches 35 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/3_1_ms_warp_2/play

# 銃発射
    execute if score @s AX.AnimationTick matches 50 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/

# ワープする
    execute if score @s AX.AnimationTick matches 63 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/

# アニメーション再生
    execute if score @s AX.AnimationTick matches 65 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/3_1_ms_warp_2/play

# 銃発射
    execute if score @s AX.AnimationTick matches 80 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/

# ワープする
    execute if score @s AX.AnimationTick matches 93 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/

# アニメーション再生
    execute if score @s AX.AnimationTick matches 95 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/3_2_ms_warp_3/play

# 銃発射
    execute if score @s AX.AnimationTick matches 110 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/gun_shot/

# 終了処理
    execute if score @s AX.AnimationTick matches 140 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/end

# バリアント
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/majime/apply
    execute if score @s AX.AnimationTick matches 130 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/normal/apply
