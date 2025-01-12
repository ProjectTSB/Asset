#> asset:container/978/register
#
# コンテナの定義データ
#
# @within function asset:container/978/


execute unless loaded -59 75 -299 run return 1

# ID (int)
    data modify storage asset:container ID set value 978
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-59, 75, -299]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:979}]