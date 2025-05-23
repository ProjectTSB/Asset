#> asset:artifact/1078.pigeon_blood/attack_melee/add_vfx_count
#
# 演出用変数設定
#
# @within function asset:artifact/1078.pigeon_blood/attack_melee/3.main

scoreboard players add @s TY.VFXCount 1
scoreboard players operation @s TY.VFXCount %= $2 Const
execute store result storage asset:temp TY.VFXCount int 1 run scoreboard players get @s TY.VFXCount
