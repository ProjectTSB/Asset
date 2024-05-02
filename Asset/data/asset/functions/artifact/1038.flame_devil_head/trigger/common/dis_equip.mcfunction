#> asset:artifact/1038.flame_devil_head/trigger/common/dis_equip
#
# 装備したときの共通処理
#
# @within function
#   asset:artifact/1038.flame_devil_head/trigger/dis_equip/main
#   asset:artifact/1039.flame_devil_chest/trigger/dis_equip/main
#   asset:artifact/1040.flame_devil_legs/trigger/dis_equip/main
#   asset:artifact/1041.flame_devil_feet/trigger/dis_equip/main

# 装備数スコア
    scoreboard players remove @s SU.EquipCount 1

# リセット処理
    scoreboard players reset @s SU.CoolDown
    scoreboard players reset @s[scores={SU.EquipCount=0}] SU.EquipCount