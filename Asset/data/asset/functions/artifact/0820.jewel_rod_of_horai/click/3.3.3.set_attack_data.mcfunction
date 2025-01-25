#> asset:artifact/0820.jewel_rod_of_horai/click/3.3.3.set_attack_data
#
# セット装備の装備数をカウントして攻撃レベルを決定
#
# @within function asset:artifact/0820.jewel_rod_of_horai/click/

# 装備状況確認
    scoreboard players set $MS.AttackLevel Temporary 0
    function api:data_get/inventory
    execute if data storage api: Inventory[{Slot:100b}].tag.TSB{ID:819} run scoreboard players add $MS.AttackLevel Temporary 1
    execute if data storage api: Inventory[{Slot:101b}].tag.TSB{ID:818} run scoreboard players add $MS.AttackLevel Temporary 1
    execute if data storage api: Inventory[{Slot:102b}].tag.TSB{ID:816} run scoreboard players add $MS.AttackLevel Temporary 1
    execute if data storage api: Inventory[{Slot:103b}].tag.TSB{ID:817} run scoreboard players add $MS.AttackLevel Temporary 1
