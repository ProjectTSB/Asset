#> asset:container/959/register
#
# コンテナの定義データ
#
# @within function asset:container/959/


execute unless loaded -147 52 -117 run return 1

# ID (int)
    data modify storage asset:container ID set value 959
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-147, 52, -117]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:6b,Item:{id:"minecraft:bread",Count:2b}},{Slot:10b,Item:{id:"minecraft:bread",Count:2b}},{Slot:11b,Item:{id:"minecraft:bread",Count:2b}},{Slot:21b,Item:{id:"minecraft:bread",Count:2b}},{Slot:24b,Item:{id:"minecraft:bread",Count:2b}},{Slot:25b,Item:{id:"minecraft:bread",Count:1b}}]