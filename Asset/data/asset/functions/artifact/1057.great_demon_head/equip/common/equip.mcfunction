#> asset:artifact/1057.great_demon_head/equip/common/equip
#
# 装備した時の共通処理
#
# @within function
#   asset:artifact/1057.great_demon_head/equip/
#   asset:artifact/1058.great_demon_chest/equip/
#   asset:artifact/1059.great_demon_leg/equip/
#   asset:artifact/1060.great_demon_boots/equip/

# 装備数スコア
    scoreboard players add @s TD.EquipCount 1

# フルセット時
    execute if score @s TD.EquipCount matches 4 run function asset:artifact/1057.great_demon_head/equip/common/all_equip_vfx