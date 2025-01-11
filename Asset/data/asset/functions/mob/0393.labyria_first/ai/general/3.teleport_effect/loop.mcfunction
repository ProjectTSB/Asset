#> asset:mob/0393.labyria_first/ai/general/3.teleport_effect/loop
#
# テレポート演出ループコマンド
#
# @within function
#   asset:mob/0393.labyria_first/ai/general/3.teleport_effect/
#   asset:mob/0393.labyria_first/ai/general/3.teleport_effect/loop

# 演出
    particle dust 1 1 0.55 1 ~ ~1 ~ 0.25 0.5 0.25 0 30 force @a[distance=..32]
    execute positioned ^ ^ ^0.5 unless entity @s[distance=..0.5] run function asset:mob/0393.labyria_first/ai/general/3.teleport_effect/loop
