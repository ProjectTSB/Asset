#> asset:container/1931/register
#
# コンテナの定義データ
#
# @within function asset:container/1931/


execute unless loaded -103 152 307 run return 1

# ID (int)
    data modify storage asset:container ID set value 1931
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-103, 152, 307]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:10b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{"effects":[{"duration":7,"id":"minecraft:saturation"}]}}},{Slot:11b,Item:{id:"minecraft:cobblestone",Count:32b}},{Slot:13b,Item:{id:"minecraft:poisonous_potato",Count:1b}},{Slot:15b,Item:{id:"minecraft:cobblestone",Count:32b}},{Slot:19b,Item:{id:"minecraft:scaffolding",Count:30b}},{Slot:21b,Item:{id:"minecraft:apple",Count:1b}},{Slot:23b,Item:{id:"minecraft:poisonous_potato",Count:1b}},{Slot:25b,Item:{id:"minecraft:scaffolding",Count:30b}}]