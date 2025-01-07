#> asset:mob/0341.louvert/tick/general/3.1.teleport_effect_loop
#
# ループ処理
#
# @within function
#   asset:mob/0341.louvert/tick/general/3.teleport_effect
#   asset:mob/0341.louvert/tick/general/3.1.teleport_effect_loop

# 演出
    particle dust -100000000 -1 -0.75 1 ~ ~1 ~ 0.25 0.5 0.25 0 30 force @a[distance=..32]
    execute positioned ^ ^ ^0.5 unless entity @s[distance=..0.5] run function asset:mob/0341.louvert/tick/general/3.1.teleport_effect_loop
