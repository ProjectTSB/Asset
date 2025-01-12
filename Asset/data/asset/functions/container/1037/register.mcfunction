#> asset:container/1037/register
#
# コンテナの定義データ
#
# @within function asset:container/1037/


execute unless loaded 154 108 268 run return 1

# ID (int)
    data modify storage asset:container ID set value 1037
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [154, 108, 268]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []