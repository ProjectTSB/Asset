#> asset:container/977/register
#
# コンテナの定義データ
#
# @within function asset:container/977/


execute unless loaded -66 71 -269 run return 1

# ID (int)
    data modify storage asset:container ID set value 977
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-66, 71, -269]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{id:"minecraft:bread",Count:1b}},{Slot:4b,Item:{id:"minecraft:bread",Count:1b}},{Slot:5b,Item:{id:"minecraft:bread",Count:1b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:12b,Item:{id:"minecraft:bread",Count:1b}},{Slot:13b,Item:900},{Slot:14b,Item:{id:"minecraft:bread",Count:1b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:21b,Item:{id:"minecraft:bread",Count:1b}},{Slot:22b,Item:{id:"minecraft:bread",Count:1b}},{Slot:23b,Item:{id:"minecraft:bread",Count:1b}}]