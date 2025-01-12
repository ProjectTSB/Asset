#> asset:container/350/register
#
# コンテナの定義データ
#
# @within function asset:container/350/


execute unless loaded -201 170 4 run return 1

# ID (int)
    data modify storage asset:container ID set value 350
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-201, 170, 4]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}}]