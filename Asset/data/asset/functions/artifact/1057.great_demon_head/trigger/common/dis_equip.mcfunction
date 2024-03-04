#> asset:artifact/1057.great_demon_head/trigger/common/dis_equip
#
# 装備を外した時の共通処理
#
# @within function
#   asset:artifact/1057.great_demon_head/trigger/dis_equip/main
#   asset:artifact/1058.great_demon_chest/trigger/dis_equip/main
#   asset:artifact/1059.great_demon_leg/trigger/dis_equip/main
#   asset:artifact/1060.great_demon_boots/trigger/dis_equip/main

# 装備数スコア
    scoreboard players remove @s TD.EquipCount 1

# リセット処理
    scoreboard players reset @s[scores={TD.EquipCount=0}] TD.EquipCount