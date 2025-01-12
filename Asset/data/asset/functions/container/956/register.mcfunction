#> asset:container/956/register
#
# コンテナの定義データ
#
# @within function asset:container/956/


execute unless loaded -149 49 -117 run return 1

# ID (int)
    data modify storage asset:container ID set value 956
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-149, 49, -117]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=north]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:11b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"duration":240,"id":"minecraft:poison"}]}}},{Slot:25b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"duration":240,"id":"minecraft:poison"}]}}}]