#> asset:artifact/0899.flame_ring/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/899/equip

# VFX
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.7
    particle flame ~ ~1 ~ 0.5 0.8 0.5 0.1 100
