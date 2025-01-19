#> asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/
#
# ヘキサレーザー
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/13_0_ms_hexa_laser/play

# TP
    execute if score @s AX.AnimationTick matches 9 at @s run tp @s ^ ^0.5 ^ ~ ~
    execute if score @s AX.AnimationTick matches 10 at @s run tp @s ^ ^0.5 ^ ~ ~
    execute if score @s AX.AnimationTick matches 11 at @s run tp @s ^ ^0.4 ^ ~ ~
    execute if score @s AX.AnimationTick matches 12 at @s run tp @s ^ ^0.2 ^ ~ ~

    execute if score @s AX.AnimationTick matches 14 at @s run tp @s ^ ^-0.2 ^ ~ ~
    execute if score @s AX.AnimationTick matches 15 at @s run tp @s ^ ^-0.4 ^ ~ ~
    execute if score @s AX.AnimationTick matches 16 at @s run tp @s ^ ^-0.5 ^ ~ ~
    execute if score @s AX.AnimationTick matches 17 at @s run tp @s ^ ^-0.5 ^ ~ ~

# サウンド
    execute if score @s AX.AnimationTick matches 40 run function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/sound

# エフェクト
    execute if score @s AX.AnimationTick matches 40..55 positioned ^-0.5 ^2.5 ^0.4 run function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/pre_vfx/pre

# 発動
    execute if score @s AX.AnimationTick matches 55 positioned ^-0.5 ^12.5 ^0.4 run function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/summon

# アニメーション再生
    execute if score @s AX.AnimationTick matches 76 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_1_idle_musket/play

# アニメーション再生
    execute if score @s AX.AnimationTick matches 116 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_1_idle_musket/play

# 終了処理
    execute if score @s AX.AnimationTick matches 155 run function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/end
