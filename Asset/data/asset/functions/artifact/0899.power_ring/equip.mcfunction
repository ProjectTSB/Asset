#> asset:artifact/0899.power_ring/equip
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/899/equip

# VFX
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.7
    particle trial_spawner_detection ~ ~1 ~ 0.8 0.4 0.8 0 20
