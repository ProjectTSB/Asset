#> asset:container/1407/register
#
# コンテナの定義データ
#
# @within function asset:container/1407/


execute unless loaded -264 83 171 run return 1

# ID (int)
    data modify storage asset:container ID set value 1407
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-264, 83, 171]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dropper[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value "common:island_rewards/lv-3"
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value []