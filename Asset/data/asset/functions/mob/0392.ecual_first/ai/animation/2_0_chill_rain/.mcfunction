#> asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/
#
# チルレイン アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 近くのプレイヤーの方を向く
    tag @s add AW.Temp.This
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/general/2.rotate
    tag @s remove AW.Temp.This

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/2_0_chill_rain/play

# アニメーション終了処理
    execute if predicate api:global_vars/difficulty/max/normal if score @s AW.AnimationTick matches 76 run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/end
