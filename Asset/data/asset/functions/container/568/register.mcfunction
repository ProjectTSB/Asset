#> asset:container/568/register
#
# コンテナの定義データ
#
# @within function asset:container/568/


execute unless loaded -23 23 -44 run return 1

# ID (int)
    data modify storage asset:container ID set value 568
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-23, 23, -44]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:hopper[facing=north,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]