#> asset:container/1264/register
#
# コンテナの定義データ
#
# @within function asset:container/1264/


execute unless loaded 66 105 1957 run return 1

# ID (int)
    data modify storage asset:container ID set value 1264
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [66, 105, 1957]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:12b,Item:907},{Slot:13b,Item:690},{Slot:14b,Item:346},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}}]