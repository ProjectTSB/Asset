#> asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/
#
# スモークボム
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/5_0_sw_smoke_bomb/play

# スモークボム発射
    execute if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AX.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb

# アニメーション再生
    execute if score @s AX.AnimationTick matches 50 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_0_idle_sword/play

# 終了処理
    execute if score @s AX.AnimationTick matches 90 run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/end

# バリアント
    execute if score @s AX.AnimationTick matches 70 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/mabataki/apply
    execute if score @s AX.AnimationTick matches 80 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/normal/apply
