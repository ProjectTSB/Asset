#> asset:container/861/register
#
# コンテナの定義データ
#
# @within function asset:container/861/


execute unless loaded 154 80 24 run return 1

# ID (int)
    data modify storage asset:container ID set value 861
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [154, 80, 24]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []