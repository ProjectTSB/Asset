#> asset:container/2186/register
#
# コンテナの定義データ
#
# @within function asset:container/2186/


execute unless loaded -259 56 165 run return 1

# ID (int)
    data modify storage asset:container ID set value 2186
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-259, 56, 165]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:64b}},{Slot:1b,Item:{id:"minecraft:diamond_block",Count:4b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:3b,Item:{id:"minecraft:netherite_scrap",Count:1b}},{Slot:4b,Item:{id:"minecraft:netherite_scrap",Count:2b}},{Slot:5b,Item:{id:"minecraft:netherite_scrap",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:16b}},{Slot:7b,Item:{id:"minecraft:diamond_block",Count:4b}},{Slot:8b,Item:{PresetItem:"currency/",Count:64b}},{Slot:9b,Item:916},{Slot:10b,Item:{id:"minecraft:gold_block",Count:16b}},{Slot:11b,Item:456},{Slot:12b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:13b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:14b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:15b,Item:456},{Slot:16b,Item:{id:"minecraft:gold_block",Count:16b}},{Slot:17b,Item:917},{Slot:18b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:19b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:20b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:21b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:22b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:23b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:24b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:25b,Item:{id:"minecraft:weeping_vines",Count:1b}},{Slot:26b,Item:{id:"minecraft:weeping_vines",Count:1b}}]