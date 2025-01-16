#> asset:container/1247/register
#
# コンテナの定義データ
#
# @within function asset:container/1247/


execute unless loaded 78 106 1939 run return 1

# ID (int)
    data modify storage asset:container ID set value 1247
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [78, 106, 1939]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:1b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:2b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:3b,Item:{id:"minecraft:ender_pearl",Count:16b}},{Slot:4b,Item:{id:"minecraft:firework_rocket",Count:64b,tag:{"Fireworks":{"Flight":3b}}}},{Slot:5b,Item:{id:"minecraft:ender_pearl",Count:16b}},{Slot:6b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:7b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:8b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:9b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:10b,Item:{PresetItem:"currency/high",Count:32b}},{Slot:11b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:12b,Item:{id:"minecraft:firework_rocket",Count:64b,tag:{"Fireworks":{"Flight":3b}}}},{Slot:13b,Item:{id:"minecraft:elytra",Count:1b,tag:{"Damage":0,"Enchantments":[{"id":"minecraft:feather_falling","lvl":4s},{"id":"minecraft:mending","lvl":1s},{"id":"minecraft:unbreaking","lvl":3s}],"RepairCost":7}}},{Slot:14b,Item:{id:"minecraft:firework_rocket",Count:64b,tag:{"Fireworks":{"Flight":3b}}}},{Slot:15b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:16b,Item:{PresetItem:"currency/high",Count:32b}},{Slot:17b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:18b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:19b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:20b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:21b,Item:{id:"minecraft:ender_pearl",Count:16b}},{Slot:22b,Item:{id:"minecraft:firework_rocket",Count:64b,tag:{"Fireworks":{"Flight":3b}}}},{Slot:23b,Item:{id:"minecraft:ender_pearl",Count:16b}},{Slot:24b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:25b,Item:{id:"minecraft:diamond",Count:4b}},{Slot:26b,Item:{id:"minecraft:diamond",Count:4b}}]