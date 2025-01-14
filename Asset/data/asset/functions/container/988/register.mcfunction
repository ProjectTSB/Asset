#> asset:container/988/register
#
# コンテナの定義データ
#
# @within function asset:container/988/


execute unless loaded 229 61 -218 run return 1

# ID (int)
    data modify storage asset:container ID set value 988
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [229, 61, -218]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:13b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:1b}}]