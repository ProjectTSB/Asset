#> asset:container/1369/register
#
# コンテナの定義データ
#
# @within function asset:container/1369/


execute unless loaded -143 51 -130 run return 1

# ID (int)
    data modify storage asset:container ID set value 1369
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-143, 51, -130]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:3b,Item:801},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:5b,Item:607},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:9b,Item:{PresetItem:"currency/",Count:21b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:17b,Item:{PresetItem:"currency/",Count:21b}},{Slot:18b,Item:{PresetItem:"currency/",Count:21b}},{Slot:19b,Item:{PresetItem:"currency/",Count:21b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/",Count:21b}},{Slot:26b,Item:{PresetItem:"currency/",Count:21b}}]