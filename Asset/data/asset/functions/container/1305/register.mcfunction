#> asset:container/1305/register
#
# コンテナの定義データ
#
# @within function asset:container/1305/


execute unless loaded 148 175 -462 run return 1

# ID (int)
    data modify storage asset:container ID set value 1305
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [148, 175, -462]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:2b,Item:963},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:3b}},{Slot:6b,Item:743}]