#> asset:artifact/1082.cursed_straw_doll/trigger/vfx/
#
# 演出処理
#
# @within function
#   asset:artifact/1082.cursed_straw_doll/trigger/3.main
#   asset:artifact/1082.cursed_straw_doll/trigger/4.damage_up

# 釘の演出
    execute positioned ^ ^ ^-1.9 run function asset:artifact/1082.cursed_straw_doll/trigger/vfx/line
    execute positioned ^ ^ ^0.6 run function asset:artifact/1082.cursed_straw_doll/trigger/vfx/circle

# playsound
    #execute at @s run function asset:artifact/1082.cursed_straw_doll/trigger/vfx/sound
