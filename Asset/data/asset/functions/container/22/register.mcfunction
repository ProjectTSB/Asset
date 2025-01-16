#> asset:container/22/register
#
# コンテナの定義データ
#
# @within function asset:container/22/


execute unless loaded -35 21 -18 run return 1

# ID (int)
    data modify storage asset:container ID set value 22
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-35, 21, -18]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/",Count:1b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/",Count:1b}},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-1",Count:2b}},{Slot:14b,Item:{PresetItem:"currency/",Count:1b}},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/",Count:1b}},{Slot:22b,Item:{PresetItem:"currency/",Count:1b}},{Slot:23b,Item:{PresetItem:"currency/",Count:1b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]