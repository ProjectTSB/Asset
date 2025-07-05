#> asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/
#
# ノヴァボム
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute if score @s AX.AnimationTick matches 1..168 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/9_0_sw_nova_bomb/play

# ノヴァ配置
    execute if score @s AX.AnimationTick matches 35 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 45 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 55 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 65 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 75 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 85 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 95 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if score @s AX.AnimationTick matches 105 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/

# ノヴァ配置 ハード
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 40 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 50 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 60 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 70 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 80 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 90 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 100 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/nova/

# ワープ
    execute if score @s AX.AnimationTick matches 166 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/warp/adj

# アニメーション再生
    execute if score @s AX.AnimationTick matches 168 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/9_1_sw_nova_bomb_finish/play

# 斬撃エフェクト表示
    execute if score @s AX.AnimationTick matches 174 run function asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/slash_effect/1

# ダメージ処理
    execute if score @s AX.AnimationTick matches 176 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/damage

# 斬撃エフェクト表示
    execute if score @s AX.AnimationTick matches 188 run function asset:mob/0393.labyria_first/ai/animation/5_0_sw_ms_warp/slash_effect/1

# ダメージ処理
    execute if score @s AX.AnimationTick matches 190 run function asset:mob/0393.labyria_first/ai/animation/4_0_sw_warp/damage

# 終了処理
    execute if score @s AX.AnimationTick matches 213 run function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/end

# バリアント
    execute if score @s AX.AnimationTick matches 5 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/mabataki/apply
    execute if score @s AX.AnimationTick matches 15 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/majime/apply
    execute if score @s AX.AnimationTick matches 200 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/normal/apply
