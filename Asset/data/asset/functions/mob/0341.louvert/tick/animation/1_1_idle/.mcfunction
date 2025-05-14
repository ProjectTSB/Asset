#> asset:mob/0341.louvert/tick/animation/1_1_idle/
#
# 待機アニメーション
#
# @within function asset:mob/0341.louvert/tick/animation/

# ノーマルは80Tick
# ハードは40Tick
# 近くのプレイヤーの方を向く
    tag @s add 9H.Temp.This
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# アニメーション再生
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/01_idle/play

# アニメーション再生
    execute if predicate api:global_vars/difficulty/max/normal if score @s 9H.AnimationTick matches 41 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/01_idle/play

# アニメーション終了処理
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s 9H.AnimationTick matches 41 run function asset:mob/0341.louvert/tick/animation/1_1_idle/end

# アニメーション終了処理
    execute if predicate api:global_vars/difficulty/max/normal if score @s 9H.AnimationTick matches 81 run function asset:mob/0341.louvert/tick/animation/1_1_idle/end
