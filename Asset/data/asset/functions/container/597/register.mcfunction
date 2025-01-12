#> asset:container/597/register
#
# コンテナの定義データ
#
# @within function asset:container/597/


execute unless loaded -16 19 169 run return 1

# ID (int)
    data modify storage asset:container ID set value 597
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-16, 19, 169]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=north,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value common:island_rewards/lv-2
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value [undefined]