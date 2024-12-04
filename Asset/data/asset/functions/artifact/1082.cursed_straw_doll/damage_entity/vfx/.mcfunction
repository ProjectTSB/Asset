#> asset:artifact/1082.cursed_straw_doll/damage_entity/vfx/
#
# 演出処理
#
# @within function
#   asset:artifact/1082.cursed_straw_doll/damage_entity/
#   asset:artifact/1082.cursed_straw_doll/damage_entity/4.damage_up

# 釘の演出
    execute positioned ^ ^ ^-1.9 run function asset:artifact/1082.cursed_straw_doll/damage_entity/vfx/line
    execute positioned ^ ^ ^0.6 run function asset:artifact/1082.cursed_straw_doll/damage_entity/vfx/circle

# playsound
    #execute at @s run function asset:artifact/1082.cursed_straw_doll/damage_entity/vfx/sound
