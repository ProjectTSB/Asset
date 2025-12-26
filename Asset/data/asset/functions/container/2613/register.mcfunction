#> asset:container/2613/register
#
# コンテナの定義データ
#
# @within function asset:container/2613/


execute unless loaded -501 84 33 run return 1

# ID (int)
    data modify storage asset:container ID set value 2613
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-501, 84, 33]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:black_shulker_box[facing=south]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:13b,Item:{id:"minecraft:paper",Count:1b,tag:{"display":{"Lore":["{\"text\":\"\\\"月の秘宝\\\"の在り処が示された紙のようだ。\",\"color\":\"white\",\"italic\":false}","{\"text\":\"「大広間への階段、三段目を掘れ」\",\"color\":\"gray\",\"italic\":false}"],"Name":"{\"text\":\"古びた紙\",\"color\":\"gray\",\"bold\":true,\"italic\":false}"}}}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}}]