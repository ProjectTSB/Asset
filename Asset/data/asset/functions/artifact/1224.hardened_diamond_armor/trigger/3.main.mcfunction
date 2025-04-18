#> asset:artifact/1224.hardened_diamond_armor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1224.hardened_diamond_armor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 装備変更成功の時
    execute unless data storage asset:context {Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]} run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 0.1 50
    execute unless data storage asset:context {Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]} run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2

# 装備変更失敗の時
    execute if data storage asset:context {Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]} run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 50
    execute if data storage asset:context {Inventory:[{Slot:100b},{Slot:101b},{Slot:102b},{Slot:103b}]} run playsound minecraft:item.shield.break player @a ~ ~ ~ 1 0.5

# 頭
    data modify storage api: Argument.ID set value 1243
    execute if data storage asset:context {Inventory:[{Slot:103b}]} run function api:artifact/give/from_id
    execute unless data storage asset:context {Inventory:[{Slot:103b}]} run data modify storage api: Argument.Slot set value "head"
    execute unless data storage asset:context {Inventory:[{Slot:103b}]} run function api:artifact/replace/from_id
# 胴
    data modify storage api: Argument.ID set value 1244
    execute if data storage asset:context {Inventory:[{Slot:102b}]} run function api:artifact/give/from_id
    execute unless data storage asset:context {Inventory:[{Slot:102b}]} run data modify storage api: Argument.Slot set value "chest"
    execute unless data storage asset:context {Inventory:[{Slot:102b}]} run function api:artifact/replace/from_id
# 脚
    data modify storage api: Argument.ID set value 1245
    execute if data storage asset:context {Inventory:[{Slot:101b}]} run function api:artifact/give/from_id
    execute unless data storage asset:context {Inventory:[{Slot:101b}]} run data modify storage api: Argument.Slot set value "legs"
    execute unless data storage asset:context {Inventory:[{Slot:101b}]} run function api:artifact/replace/from_id
# 足
    data modify storage api: Argument.ID set value 1246
    execute if data storage asset:context {Inventory:[{Slot:100b}]} run function api:artifact/give/from_id
    execute unless data storage asset:context {Inventory:[{Slot:100b}]} run data modify storage api: Argument.Slot set value "feet"
    execute unless data storage asset:context {Inventory:[{Slot:100b}]} run function api:artifact/replace/from_id
