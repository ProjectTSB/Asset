#> asset:container/2400/register
#
# コンテナの定義データ
#
# @within function asset:container/2400/


execute unless loaded 616 104 57 run return 1

# ID (int)
    data modify storage asset:container ID set value 2400
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [616, 104, 57]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:1b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:2b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:3b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:4b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:5b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:6b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:7b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:8b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:9b,Item:1106},{Slot:10b,Item:{id:"minecraft:honey_bottle",Count:16b}},{Slot:11b,Item:{id:"minecraft:honey_bottle",Count:16b}},{Slot:12b,Item:{id:"minecraft:honey_bottle",Count:16b}},{Slot:13b,Item:{id:"minecraft:bee_spawn_egg",Count:4b}},{Slot:14b,Item:{id:"minecraft:honey_bottle",Count:16b}},{Slot:15b,Item:{id:"minecraft:honey_bottle",Count:16b}},{Slot:16b,Item:{id:"minecraft:honey_bottle",Count:16b}},{Slot:17b,Item:1106},{Slot:18b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:19b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:20b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:21b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:22b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:23b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:24b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:25b,Item:{id:"minecraft:glass_bottle",Count:1b}},{Slot:26b,Item:{id:"minecraft:glass_bottle",Count:1b}}]