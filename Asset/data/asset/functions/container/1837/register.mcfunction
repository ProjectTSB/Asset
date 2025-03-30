#> asset:container/1837/register
#
# コンテナの定義データ
#
# @within function asset:container/1837/


execute unless loaded -13 8 44 run return 1

# ID (int)
    data modify storage asset:container ID set value 1837
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-13, 8, 44]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:apple",Count:2b}},{Slot:2b,Item:617},{Slot:6b,Item:617},{Slot:8b,Item:{id:"minecraft:apple",Count:2b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:18b,Item:{id:"minecraft:apple",Count:2b}},{Slot:20b,Item:617},{Slot:24b,Item:617},{Slot:26b,Item:{id:"minecraft:apple",Count:2b}}]