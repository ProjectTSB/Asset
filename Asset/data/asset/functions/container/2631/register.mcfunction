#> asset:container/2631/register
#
# コンテナの定義データ
#
# @within function asset:container/2631/


execute unless loaded 77 128 1951 run return 1

# ID (int)
    data modify storage asset:container ID set value 2631
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [77, 128, 1951]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:1039},{Slot:4b,Item:361},{Slot:6b,Item:1058},{Slot:12b,Item:609},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:14b,Item:33},{Slot:20b,Item:1040},{Slot:22b,Item:920},{Slot:24b,Item:1059}]