#> asset:artifact/0740.flower_of_hazy_moon/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/740/equip

# MP150消費
    data modify storage api: Argument.Fluctuation set value -150
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation

# 演出
    particle end_rod ~ ~1.3 ~ 0 0 0 0.05 10 normal @a
    particle end_rod ~ ~1.3 ~ 0 0 0 0.075 70 normal @a
    particle campfire_cosy_smoke ~ ~1.3 ~ 0.2 0.2 0.2 0.1 10 normal @a
    particle campfire_cosy_smoke ~ ~1.3 ~ 0.2 0.2 0.2 0.15 70 normal @a
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1 0.5
