#> asset:container/107/register
#
# コンテナの定義データ
#
# @within function asset:container/107/


execute unless loaded -69 -9 150 run return 1

# ID (int)
    data modify storage asset:container ID set value 107
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-69, -9, 150]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:hopper[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:4b,Item:{PresetItem:"currency/",Count:1b}}]