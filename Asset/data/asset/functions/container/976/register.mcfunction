#> asset:container/976/register
#
# コンテナの定義データ
#
# @within function asset:container/976/


execute unless loaded -73 63 -277 run return 1

# ID (int)
    data modify storage asset:container ID set value 976
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-73, 63, -277]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=true,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:13b,Item:903},{Slot:16b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:21b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:23b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}}]