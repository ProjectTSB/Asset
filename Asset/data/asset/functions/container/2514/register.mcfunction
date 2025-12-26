#> asset:container/2514/register
#
# コンテナの定義データ
#
# @within function asset:container/2514/


execute unless loaded -1 21 169 run return 1

# ID (int)
    data modify storage asset:container ID set value 2514
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-1, 21, 169]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:blast_furnace[facing=west]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:1b,Item:{id:"minecraft:sugar",Count:8b}}]