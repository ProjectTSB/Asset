#> asset:container/2137/register
#
# コンテナの定義データ
#
# @within function asset:container/2137/


execute unless loaded 91 91 1867 run return 1

# ID (int)
    data modify storage asset:container ID set value 2137
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [91, 91, 1867]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:white_shulker_box[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:rabbit_stew",Count:1b}},{Slot:3b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"id":"minecraft:regeneration"}]}}},{Slot:5b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"duration":180,"id":"minecraft:weakness"}]}}},{Slot:7b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"id":"minecraft:blindness"}]}}},{Slot:13b,Item:456},{Slot:17b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"duration":80,"id":"minecraft:fire_resistance"}]}}},{Slot:18b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"duration":100,"id":"minecraft:night_vision"}]}}},{Slot:20b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"duration":7,"id":"minecraft:saturation"}]}}},{Slot:24b,Item:{id:"minecraft:rabbit_stew",Count:1b}}]