#> asset:container/352/register
#
# コンテナの定義データ
#
# @within function asset:container/352/


execute unless loaded -251 152 4 run return 1

# ID (int)
    data modify storage asset:container ID set value 352
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-251, 152, 4]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:dispenser[facing=east,type=null]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    data modify storage asset:container LootTable set value common:island_rewards/lv-3
# アイテム ([id(minecraft:loot_table)] オプション)
    # data modify storage asset:container Items set value [undefined]