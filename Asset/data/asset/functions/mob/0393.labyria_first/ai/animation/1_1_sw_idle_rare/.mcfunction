#> asset:mob/0393.labyria_first/ai/animation/1_1_sw_idle_rare/
#
# 待機 アニメーション ソードレア
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# ノーマルは80Tick
# ハードは40Tick
# 近くのプレイヤーの方を向く
    tag @s add AZ.Temp.This
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    tag @s remove AZ.Temp.This

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 1 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/1_0_idle_sword_rare/play

# アニメーション再生
    execute if predicate api:global_vars/difficulty/max/normal if score @s AZ.AnimationTick matches 40 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/1_0_idle_sword/play

# アニメーション終了処理
    execute if predicate api:global_vars/difficulty/min/hard if score @s AZ.AnimationTick matches 40 run function asset:mob/0393.labyria_first/ai/animation/1_0_sw_idle/end

# アニメーション終了処理
    execute if predicate api:global_vars/difficulty/max/normal if score @s AZ.AnimationTick matches 80 run function asset:mob/0393.labyria_first/ai/animation/1_0_sw_idle/end
