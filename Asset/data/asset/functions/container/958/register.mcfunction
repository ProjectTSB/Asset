#> asset:container/958/register
#
# コンテナの定義データ
#
# @within function asset:container/958/


execute unless loaded -149 50 -117 run return 1

# ID (int)
    data modify storage asset:container ID set value 958
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-149, 50, -117]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:145},{Slot:13b,Item:355},{Slot:19b,Item:144},{Slot:25b,Item:144}]