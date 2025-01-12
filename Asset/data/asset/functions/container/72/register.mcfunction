#> asset:container/72/register
#
# コンテナの定義データ
#
# @within function asset:container/72/


execute unless loaded -122 73 154 run return 1

# ID (int)
    data modify storage asset:container ID set value 72
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-122, 73, 154]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}},{Slot:2b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}},{Slot:4b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}},{Slot:6b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}},{Slot:8b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}},{Slot:9b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:11b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:13b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:15b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:17b,Item:{id:"minecraft:honey_bottle",Count:1b,tag:{}}},{Slot:18b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}},{Slot:20b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}},{Slot:22b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}},{Slot:24b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}},{Slot:26b,Item:{id:"minecraft:glow_berries",Count:1b,tag:{}}}]