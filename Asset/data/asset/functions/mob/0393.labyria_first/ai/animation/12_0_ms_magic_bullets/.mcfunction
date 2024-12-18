#> asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/
#
# 魔弾連射
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute if score @s AX.AnimationTick matches 1..140 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/12_0_ms_magic_bullets/play

# 魔弾魔法陣召喚
    execute if score @s AX.AnimationTick matches 22 positioned ^6 ^1 ^1 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/summon
    execute if score @s AX.AnimationTick matches 24 positioned ^4 ^3 ^1 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/summon
    execute if score @s AX.AnimationTick matches 26 positioned ^2 ^5 ^1 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/summon
    execute if score @s AX.AnimationTick matches 28 positioned ^-2 ^5 ^1 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/summon
    execute if score @s AX.AnimationTick matches 30 positioned ^-4 ^3 ^1 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/summon
    execute if score @s AX.AnimationTick matches 32 positioned ^-6 ^1 ^1 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/summon

# TP
    execute if score @s AX.AnimationTick matches 9 at @s run tp @s ^ ^0.2 ^ ~ ~
    execute if score @s AX.AnimationTick matches 10 at @s run tp @s ^ ^0.3 ^ ~ ~
    execute if score @s AX.AnimationTick matches 11 at @s run tp @s ^ ^0.4 ^ ~ ~
    execute if score @s AX.AnimationTick matches 12 at @s run tp @s ^ ^0.3 ^ ~ ~
    execute if score @s AX.AnimationTick matches 13 at @s run tp @s ^ ^0.2 ^ ~ ~
    execute if score @s AX.AnimationTick matches 14 at @s run tp @s ^ ^0.1 ^ ~ ~

    execute if score @s AX.AnimationTick matches 16 at @s run tp @s ^ ^-0.1 ^ ~ ~
    execute if score @s AX.AnimationTick matches 17 at @s run tp @s ^ ^-0.2 ^ ~ ~
    execute if score @s AX.AnimationTick matches 18 at @s run tp @s ^ ^-0.3 ^ ~ ~
    execute if score @s AX.AnimationTick matches 19 at @s run tp @s ^ ^-0.4 ^ ~ ~
    execute if score @s AX.AnimationTick matches 20 at @s run tp @s ^ ^-0.3 ^ ~ ~
    execute if score @s AX.AnimationTick matches 21 at @s run tp @s ^ ^-0.2 ^ ~ ~

# 魔弾生成
    execute if score @s AX.AnimationTick matches 22..139 positioned ^-0.3 ^1 ^2.5 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/pre_vfx/pre

# 魔弾発射
    execute if score @s AX.AnimationTick matches 140 positioned ^-0.3 ^1 ^2.5 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/cast/cast

# 終了処理
    execute if score @s AX.AnimationTick matches 175 run function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/end

# バリアント
    execute if score @s AX.AnimationTick matches 20 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/majime/apply
    execute if score @s AX.AnimationTick matches 165 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/normal/apply
