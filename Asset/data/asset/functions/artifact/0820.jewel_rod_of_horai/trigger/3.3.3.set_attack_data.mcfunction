#> asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.3.set_attack_data
#
# ターゲットのUUIDをAECにセットし攻撃発生地点に移動
# @input
#   as @p[tag=this]
#   MS.TargetUUID Temporary 攻撃対象のUUID
#
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/3.main

# 装備状況確認
    scoreboard players set $MS.AttackLevel Temporary 0
    function api:data_get/inventory
    execute if data storage api: Inventory[{Slot:100b}].tag.TSB{ID:819} run scoreboard players add $MS.AttackLevel Temporary 1
    execute if data storage api: Inventory[{Slot:101b}].tag.TSB{ID:818} run scoreboard players add $MS.AttackLevel Temporary 1
    execute if data storage api: Inventory[{Slot:102b}].tag.TSB{ID:816} run scoreboard players add $MS.AttackLevel Temporary 1
    execute if data storage api: Inventory[{Slot:103b}].tag.TSB{ID:817} run scoreboard players add $MS.AttackLevel Temporary 1
