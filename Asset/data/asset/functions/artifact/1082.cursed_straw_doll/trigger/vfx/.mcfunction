#> asset:artifact/1082.cursed_straw_doll/trigger/vfx/
#
# 演出処理
#
# @within function asset:artifact/1082.cursed_straw_doll/trigger/3.main

# 釘の演出
    execute anchored eyes positioned ^ ^ ^ facing entity @p[tag=this] eyes rotated ~ -55 positioned ^ ^ ^-1.9 run function asset:artifact/1082.cursed_straw_doll/trigger/vfx/line
    execute anchored eyes positioned ^ ^ ^ facing entity @p[tag=this] eyes rotated ~ -55 positioned ^ ^ ^0.6 run function asset:artifact/1082.cursed_straw_doll/trigger/vfx/circle

# playsound
    playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.4 0.7
    playsound minecraft:ui.stonecutter.take_result player @a ~ ~ ~ 1 1.1
    playsound minecraft:ui.stonecutter.take_result player @a ~ ~ ~ 1 0.9
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.75