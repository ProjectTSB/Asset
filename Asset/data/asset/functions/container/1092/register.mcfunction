#> asset:container/1092/register
#
# コンテナの定義データ
#
# @within function asset:container/1092/


execute unless loaded -469 66 37 run return 1

# ID (int)
    data modify storage asset:container ID set value 1092
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-469, 66, 37]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=true,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []