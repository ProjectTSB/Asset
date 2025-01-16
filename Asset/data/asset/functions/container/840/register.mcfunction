#> asset:container/840/register
#
# コンテナの定義データ
#
# @within function asset:container/840/


execute unless loaded -141 107 -242 run return 1

# ID (int)
    data modify storage asset:container ID set value 840
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-141, 107, -242]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:vine",Count:1b}},{Slot:1b,Item:980},{Slot:2b,Item:{id:"minecraft:vine",Count:1b}},{Slot:3b,Item:{id:"minecraft:glow_lichen",Count:1b}},{Slot:4b,Item:{id:"minecraft:dandelion",Count:1b}},{Slot:5b,Item:{id:"minecraft:glow_lichen",Count:1b}},{Slot:6b,Item:{id:"minecraft:vine",Count:1b}},{Slot:7b,Item:978},{Slot:8b,Item:{id:"minecraft:vine",Count:1b}},{Slot:9b,Item:{id:"minecraft:glow_lichen",Count:1b}},{Slot:10b,Item:{id:"minecraft:vine",Count:1b}},{Slot:11b,Item:{id:"minecraft:glow_lichen",Count:1b}},{Slot:12b,Item:1056},{Slot:13b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:14b,Item:1047},{Slot:15b,Item:{id:"minecraft:glow_lichen",Count:1b}},{Slot:16b,Item:{id:"minecraft:vine",Count:1b}},{Slot:17b,Item:{id:"minecraft:glow_lichen",Count:1b}},{Slot:18b,Item:{id:"minecraft:vine",Count:1b}},{Slot:19b,Item:978},{Slot:20b,Item:{id:"minecraft:vine",Count:1b}},{Slot:21b,Item:{id:"minecraft:glow_lichen",Count:1b}},{Slot:22b,Item:{id:"minecraft:wither_rose",Count:1b}},{Slot:23b,Item:{id:"minecraft:glow_lichen",Count:1b}},{Slot:24b,Item:{id:"minecraft:vine",Count:1b}},{Slot:25b,Item:980},{Slot:26b,Item:{id:"minecraft:vine",Count:1b}}]