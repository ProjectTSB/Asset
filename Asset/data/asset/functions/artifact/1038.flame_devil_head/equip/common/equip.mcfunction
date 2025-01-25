#> asset:artifact/1038.flame_devil_head/equip/common/equip
#
# 装備したときの共通処理
#
# @within function
#   asset:artifact/1038.flame_devil_head/equip/
#   asset:artifact/1039.flame_devil_chest/equip/
#   asset:artifact/1040.flame_devil_legs/equip/
#   asset:artifact/1041.flame_devil_feet/equip/

# 装備数スコア
    scoreboard players add @s SU.EquipCount 1

# フルセット時
    execute if score @s SU.EquipCount matches 4 run function asset:artifact/1038.flame_devil_head/equip/common/all_equip_vfx