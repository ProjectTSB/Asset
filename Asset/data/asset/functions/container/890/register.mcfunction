#> asset:container/890/register
#
# コンテナの定義データ
#
# @within function asset:container/890/


execute unless loaded -116 52 -14 run return 1

# ID (int)
    data modify storage asset:container ID set value 890
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-116, 52, -14]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-2"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []