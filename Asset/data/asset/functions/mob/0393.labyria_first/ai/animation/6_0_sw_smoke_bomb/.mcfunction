#> asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/
#
# スモークボム
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    tag @s add AZ.Temp.This
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    tag @s remove AZ.Temp.This

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 1 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/5_0_sw_smoke_bomb/play

# スモークボム発射
    execute if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 20 positioned ~ ~2.25 ~ run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/bomb

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 50 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/1_0_idle_sword/play

# 終了処理
    execute if score @s AZ.AnimationTick matches 90 run function asset:mob/0393.labyria_first/ai/animation/6_0_sw_smoke_bomb/end
