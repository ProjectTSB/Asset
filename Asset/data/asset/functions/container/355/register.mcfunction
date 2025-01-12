#> asset:container/355/register
#
# コンテナの定義データ
#
# @within function asset:container/355/


execute unless loaded -252 152 5 run return 1

# ID (int)
    data modify storage asset:container ID set value 355
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-252, 152, 5]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=south,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []