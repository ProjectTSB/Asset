#> asset:container/109/register
#
# コンテナの定義データ
#
# @within function asset:container/109/


execute unless loaded -82 -16 143 run return 1

# ID (int)
    data modify storage asset:container ID set value 109
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-82, -16, 143]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:furnace[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:1b,Item:106}]