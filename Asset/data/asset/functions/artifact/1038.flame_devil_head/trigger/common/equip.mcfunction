#> asset:artifact/1038.flame_devil_head/trigger/common/equip
#
# 装備したときの共通処理
#
# @within function
#   asset:artifact/1038.flame_devil_head/trigger/3.main
#   asset:artifact/1039.flame_devil_chest/trigger/3.main
#   asset:artifact/1040.flame_devil_legs/trigger/3.main
#   asset:artifact/1041.flame_devil_feet/trigger/3.main

# 装備数スコア
    scoreboard players add @s SU.EquipCount 1

# フルセット時
    execute if score @s SU.EquipCount matches 4 run function asset:artifact/1038.flame_devil_head/trigger/common/all_equip_vfx