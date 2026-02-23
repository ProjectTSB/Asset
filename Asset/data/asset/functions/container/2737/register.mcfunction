#> asset:container/2737/register
#
# コンテナの定義データ
#
# @within function asset:container/2737/


execute unless loaded 186 129 -370 run return 1

# ID (int)
    data modify storage asset:container ID set value 2737
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [186, 129, -370]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:smoker[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:cooked_porkchop",Count:16b}},{Slot:1b,Item:{id:"minecraft:jungle_sapling",Count:2b}}]