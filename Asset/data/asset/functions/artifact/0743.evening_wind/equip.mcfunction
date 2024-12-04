#> asset:artifact/0743.evening_wind/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/743/equip

# MP150消費
    data modify storage api: Argument.Fluctuation set value -150
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation

# 演出
    particle dust_color_transition 1 0.373 0.373 1.6 1 0.635 0 ~ ~1.3 ~ 0.9 0.6 0.9 0 60 normal @a
    particle dust_color_transition 1 0.635 0 1.6 1 0.373 0.373 ~ ~1.3 ~ 0.9 0.6 0.9 0 60 normal @a
    particle flame ~ ~1.3 ~ 0.9 0.6 0.9 0.12 30 normal @a
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 0.7 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 0.8 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 0.9 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 1.1 0
    playsound block.lava.extinguish player @a ~ ~ ~ 0.5 0.9
