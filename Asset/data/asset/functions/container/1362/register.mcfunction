#> asset:container/1362/register
#
# コンテナの定義データ
#
# @within function asset:container/1362/


execute unless loaded -257 99 152 run return 1

# ID (int)
    data modify storage asset:container ID set value 1362
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-257, 99, 152]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:brewing_stand"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:3b,Item:{id:"minecraft:golden_carrot",Count:16b}}]