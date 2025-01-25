#> asset:artifact/0535.all_night_chestplate/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/535/attack_melee/check

    function asset:artifact/common/check_condition/chest
# 他にアイテム等確認する場合はここに書く

# 今が夜かどうか確認
    execute store result score $Daytime Temporary run time query daytime

# 装備をすべて着ているが、夜じゃない場合
    execute if data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:534}}},{Slot:101b,tag:{TSB:{ID:536}}},{Slot:100b,tag:{TSB:{ID:537}}}]} if score $Daytime Temporary matches 0..12000 run tag @s remove CanUsed

# 演出（使用できないときのメッセージだすとうるさいのでなし）
    execute unless entity @s[tag=CanUsed] run particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0 20 normal @s
    execute unless entity @s[tag=CanUsed] run playsound minecraft:block.stone_button.click_off player @s ~ ~ ~ 1 2

# 装備が足りない場合
    execute unless data storage asset:context {Inventory:[{Slot:103b,tag:{TSB:{ID:534}}},{Slot:101b,tag:{TSB:{ID:536}}},{Slot:100b,tag:{TSB:{ID:537}}}]} run tag @s remove CanUsed

# リセット
    scoreboard players reset $Daytime Temporary