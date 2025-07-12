#> asset:container/2425/register
#
# コンテナの定義データ
#
# @within function asset:container/2425/


execute unless loaded 20 3 -15 run return 1

# ID (int)
    data modify storage asset:container ID set value 2425
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [20, 3, -15]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{id:"minecraft:filled_map",Count:1b,tag:{"map":26}}},{Slot:4b,Item:{id:"minecraft:filled_map",Count:1b,tag:{"map":27}}},{Slot:5b,Item:{id:"minecraft:filled_map",Count:1b,tag:{"map":28}}},{Slot:10b,Item:{id:"minecraft:map",Count:8b}},{Slot:12b,Item:{id:"minecraft:filled_map",Count:1b,tag:{"map":33}}},{Slot:13b,Item:{id:"minecraft:filled_map",Count:1b,tag:{"map":17}}},{Slot:14b,Item:{id:"minecraft:filled_map",Count:1b,tag:{"map":29}}},{Slot:16b,Item:{id:"minecraft:map",Count:8b}},{Slot:21b,Item:{id:"minecraft:filled_map",Count:1b,tag:{"map":32}}},{Slot:22b,Item:{id:"minecraft:filled_map",Count:1b,tag:{"map":31}}},{Slot:23b,Item:{id:"minecraft:filled_map",Count:1b,tag:{"map":30}}}]