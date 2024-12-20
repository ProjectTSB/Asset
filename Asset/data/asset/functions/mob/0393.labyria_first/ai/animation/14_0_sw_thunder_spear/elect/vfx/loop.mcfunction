#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/loop
#
# 帯電VFXループ
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
#   asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/loop

# 演出
    particle dust 1 0.6 0 2 ~ ~2 ~ 0.15 0.15 0.15 0 7 force @a[distance=..32]
    particle electric_spark ~ ~2 ~ 0.15 0.15 0.15 0 7 force @a[distance=..32]
    execute positioned ^ ^ ^0.5 unless entity @e[type=item_display,scores={ObjectID=2012},distance=..0.5] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/loop
