#> asset:container/886/register
#
# コンテナの定義データ
#
# @within function asset:container/886/


execute unless loaded -45 2 103 run return 1

# ID (int)
    data modify storage asset:container ID set value 886
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-45, 2, 103]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []