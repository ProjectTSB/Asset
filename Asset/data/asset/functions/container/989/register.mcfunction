#> asset:container/989/register
#
# コンテナの定義データ
#
# @within function asset:container/989/


execute unless loaded 230 61 -218 run return 1

# ID (int)
    data modify storage asset:container ID set value 989
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [230, 61, -218]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:13b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:1b}}]