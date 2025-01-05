#> asset:artifact/1057.great_demon_head/trigger/common/equip
#
# 装備した時の共通処理
#
# @within function
#   asset:artifact/1057.great_demon_head/trigger/3.main
#   asset:artifact/1058.great_demon_chest/trigger/3.main
#   asset:artifact/1059.great_demon_leg/trigger/3.main
#   asset:artifact/1060.great_demon_boots/trigger/3.main

# 装備数スコア
    scoreboard players add @s TD.EquipCount 1

# フルセット時
    execute if score @s TD.EquipCount matches 4 run function asset:artifact/1057.great_demon_head/trigger/common/all_equip_vfx