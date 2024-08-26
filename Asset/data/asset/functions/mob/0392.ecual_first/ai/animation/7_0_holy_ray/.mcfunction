#> asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/
#
# ホーリーレイ アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 近くのプレイヤーの方を向く
    tag @s add AW.Temp.This
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/general/2.rotate
    tag @s remove AW.Temp.This

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/7_0_holy_ray/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 176 run function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/end

# ビーム発射
    execute if score @s AW.AnimationTick matches 66..146 positioned ^ ^1 ^1.25 run function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/

# TP
    execute if score @s AW.AnimationTick matches 16 at @s run tp @s ^ ^0.3 ^ ~ ~
    execute if score @s AW.AnimationTick matches 17 at @s run tp @s ^ ^0.4 ^ ~ ~
    execute if score @s AW.AnimationTick matches 18 at @s run tp @s ^ ^0.5 ^ ~ ~
    execute if score @s AW.AnimationTick matches 19 at @s run tp @s ^ ^0.2 ^ ~ ~
    execute if score @s AW.AnimationTick matches 20 at @s run tp @s ^ ^0.1 ^ ~ ~

    execute if score @s AW.AnimationTick matches 23 at @s run tp @s ^ ^-0.05 ^ ~ ~
    execute if score @s AW.AnimationTick matches 24 at @s run tp @s ^ ^-0.1 ^ ~ ~
    execute if score @s AW.AnimationTick matches 25 at @s run tp @s ^ ^-0.15 ^ ~ ~
    execute if score @s AW.AnimationTick matches 26 at @s run tp @s ^ ^-0.2 ^ ~ ~
    execute if score @s AW.AnimationTick matches 27 at @s run tp @s ^ ^-0.2 ^ ~ ~
    execute if score @s AW.AnimationTick matches 28 at @s run tp @s ^ ^-0.2 ^ ~ ~
    execute if score @s AW.AnimationTick matches 171 at @s run tp @s ^ ^-0.12 ^ ~ ~
    execute if score @s AW.AnimationTick matches 172 at @s run tp @s ^ ^-0.12 ^ ~ ~
    execute if score @s AW.AnimationTick matches 173 at @s run tp @s ^ ^-0.12 ^ ~ ~
    execute if score @s AW.AnimationTick matches 174 at @s run tp @s ^ ^-0.12 ^ ~ ~
    execute if score @s AW.AnimationTick matches 175 at @s run tp @s ^ ^-0.12 ^ ~ ~
