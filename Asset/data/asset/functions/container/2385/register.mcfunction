#> asset:container/2385/register
#
# コンテナの定義データ
#
# @within function asset:container/2385/


execute unless loaded -232 87 -32 run return 1

# ID (int)
    data modify storage asset:container ID set value 2385
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-232, 87, -32]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:2b}},{Slot:5b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:7b,Item:{PresetItem:"currency/high",Count:1b}}]