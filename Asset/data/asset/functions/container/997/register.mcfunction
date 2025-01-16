#> asset:container/997/register
#
# コンテナの定義データ
#
# @within function asset:container/997/


execute unless loaded 305 61 -267 run return 1

# ID (int)
    data modify storage asset:container ID set value 997
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [305, 61, -267]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:14b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:1b}}]