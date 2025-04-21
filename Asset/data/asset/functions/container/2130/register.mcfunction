#> asset:container/2130/register
#
# コンテナの定義データ
#
# @within function asset:container/2130/


execute unless loaded 152 183 -193 run return 1

# ID (int)
    data modify storage asset:container ID set value 2130
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [152, 183, -193]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:black_shulker_box[facing=east]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:1b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:3b,Item:3},{Slot:4b,Item:3},{Slot:5b,Item:3},{Slot:6b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:7b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:9b,Item:43},{Slot:10b,Item:897},{Slot:11b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:12b,Item:3},{Slot:13b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;-64361877,1076317148,-1858193176,1557186186],"Name":"Yavu_8B","Properties":{"textures":[{"Signature":"H6E7w8NbNCbShBOzPDIuAFW847voD1+GKDgDnF6M0OoxvfmYM+R81gt7EuFLkyeEf6lZog9tBDLs+J7bB+Pkq9HNGBVSMCwSccdfmaq9k6MqZNV/oPtrin33XDYL+EqClXqhAw6sywhcFkl1B51frFoX57gC3zvbu7FnQqO0qg99ELTLzPNAg9UC/a5gbvTmkYdM2+WddWKP6s57+MRHauwUrrg40AyZSaPJqqDC7nYJrFjA1Ecr0jsEYcGmTxbVB9IxmvrroCKN8hXQpuLwUjv5R6F8MBN5mmH/+jsMqbfVDyyoWbN50yHu7DXYG+2oQzYwJEFHqV77pfWdK4qbs9xVZCCvAiOaePT+XCvOuoAAiAWaa6OQSSS1iO8UVz8IXQ0gA50XfetzhDrAHmWeYNvL75AqQwO+wWv3PHi3MRCext5uJhqSHSQn7BfK8JFQ9XafIzI3LSccrxBRFN7bnfH2EV8wM5gtADnCpQwMnX5J2Y85KgwMYvwk7R7xXuAxxQlbubZ/DLxGRyoQ9H3+/rAzRwYRuEaNaIzNeGKQ2XkQ+hlK9GhceJ3UenUWkrA9A6aRzL5gtxfiRYpv/oIIZJ6siQbah1gAbnq5YL4zB9BONNI3DuD/dN2eEOoFFLT+vZXGQ0veZi4gz2Tu+FMxs7t01V2GsVy6+pD2JfnfCsg=","Value":"ewogICJ0aW1lc3RhbXAiIDogMTY5NjE2NDcyMzc3NywKICAicHJvZmlsZUlkIiA6ICJmYzI5ZWE2YjQwMjc0YmRjOTEzZTM4ZTg1Y2QwYzY4YSIsCiAgInByb2ZpbGVOYW1lIiA6ICJZYXZ1XzhCIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2JhNTZmNTQwNWYzZDRlMmUwYzcwYTU3ZTZhYWU5M2Q2NmQzYjQ2MjVjYzI4MzRjZmQzYTIyZGIwMGMxNWUyYWUiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}]}}}}},{Slot:14b,Item:3},{Slot:15b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:16b,Item:897},{Slot:17b,Item:43},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:19b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:21b,Item:3},{Slot:22b,Item:3},{Slot:23b,Item:3},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:25b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}}]