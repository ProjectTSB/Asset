#> asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.3.get_attack_level
#
# セット装備の装備数をカウントして攻撃レベルを決定
#
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/3.main

# 装備状況確認
    scoreboard players set $MS.AttackLevel Temporary 0
    function api:data_get/inventory
    execute if data storage api: Inventory[].tag.TSB{ID:819} run scoreboard players add $MS.AttackLevel Temporary 1
    execute if data storage api: Inventory[].tag.TSB{ID:818} run scoreboard players add $MS.AttackLevel Temporary 1
    execute if data storage api: Inventory[].tag.TSB{ID:816} run scoreboard players add $MS.AttackLevel Temporary 1
    execute if data storage api: Inventory[].tag.TSB{ID:817} run scoreboard players add $MS.AttackLevel Temporary 1
