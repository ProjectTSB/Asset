#> asset:container/2475/register
#
# コンテナの定義データ
#
# @within function asset:container/2475/


execute unless loaded -143 51 -131 run return 1

# ID (int)
    data modify storage asset:container ID set value 2475
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-143, 51, -131]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:16b}},{Slot:1b,Item:{PresetItem:"currency/",Count:16b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:9b,Item:{PresetItem:"currency/",Count:16b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:17b,Item:{PresetItem:"currency/high",Count:2b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:22b,Item:{id:"minecraft:cooked_beef",Count:16b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]