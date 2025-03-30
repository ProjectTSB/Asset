#> asset:container/1922/register
#
# コンテナの定義データ
#
# @within function asset:container/1922/


execute unless loaded -553 283 -11 run return 1

# ID (int)
    data modify storage asset:container ID set value 1922
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-553, 283, -11]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:supplies/lv-4"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []