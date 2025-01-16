#> asset:container/957/register
#
# コンテナの定義データ
#
# @within function asset:container/957/


execute unless loaded -150 50 -117 run return 1

# ID (int)
    data modify storage asset:container ID set value 957
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-150, 50, -117]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:10b,Item:{id:"minecraft:poisonous_potato",Count:2b}},{Slot:11b,Item:{id:"minecraft:poisonous_potato",Count:2b}},{Slot:13b,Item:{id:"minecraft:poisonous_potato",Count:1b}},{Slot:23b,Item:{id:"minecraft:poisonous_potato",Count:1b}},{Slot:24b,Item:{id:"minecraft:poisonous_potato",Count:2b}},{Slot:25b,Item:{id:"minecraft:poisonous_potato",Count:1b}},{Slot:26b,Item:{id:"minecraft:poisonous_potato",Count:1b}}]