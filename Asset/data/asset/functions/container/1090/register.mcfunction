#> asset:container/1090/register
#
# コンテナの定義データ
#
# @within function asset:container/1090/


execute unless loaded -503 66 57 run return 1

# ID (int)
    data modify storage asset:container ID set value 1090
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-503, 66, 57]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=true,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []