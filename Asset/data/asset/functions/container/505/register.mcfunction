#> asset:container/505/register
#
# コンテナの定義データ
#
# @within function asset:container/505/


execute unless loaded -126 57 -15 run return 1

# ID (int)
    data modify storage asset:container ID set value 505
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-126, 57, -15]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=left]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value 
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value []