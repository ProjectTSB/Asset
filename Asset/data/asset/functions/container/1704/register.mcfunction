#> asset:container/1704/register
#
# コンテナの定義データ
#
# @within function asset:container/1704/


execute unless loaded 98 120 221 run return 1

# ID (int)
    data modify storage asset:container ID set value 1704
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [98, 120, 221]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:lava_bucket",Count:1b}},{Slot:1b,Item:{id:"minecraft:fire_charge",Count:16b}},{Slot:2b,Item:{id:"minecraft:fire_charge",Count:16b}},{Slot:3b,Item:{id:"minecraft:crimson_roots",Count:1b}},{Slot:6b,Item:456},{Slot:7b,Item:{id:"minecraft:fire_charge",Count:16b}},{Slot:8b,Item:{id:"minecraft:lava_bucket",Count:1b}},{Slot:9b,Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{"Damage":0}}},{Slot:10b,Item:{id:"minecraft:fire_charge",Count:16b}},{Slot:11b,Item:441},{Slot:12b,Item:{id:"minecraft:nether_wart_block",Count:1b}},{Slot:13b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;-1207243407,1766476198,-1571083228,-462456623],"Name":"Noname_Sister","Properties":{"textures":[{"Signature":"cwRfEYuIKGsINcTGS54v2aEBAGtX92OiJL63JRvhQpM1T+K5Vhbed4pm16If5WHjkCY7REvpGixDZhHFl6De7Sj8YEvFpgIlrJjgGhCV9m5nDznEJxcud/vR609XrPFH1m6LMs1TMQ/FTAad7SZ1HFC6DXfa9QCerrnihTs6+0Kdngis5GnQxFgnJ0Ma5vC5clbcyEA2TbmfshHGyJ5IJTUl0fM4yIjyNCp0XoQD6OW/NyLpkb55SZg0GkrAfzYRmsIbdRiiIL72lDZYqLLvG2nVIZ1hWVjJAiMji6OkzCIFpNJQodGFHk/HSQTIbKNj4JXL1mpsXVrzV6xhWO94nv0f+Xa1hXGG5LUw7/078eIhsaXfcbnf/JzPrwj45j9DrlLoTcUXJJ+5qd9RauiSO1xOms0hkZrKE7yd1c/NhfkazOXalPIK7q5o8A9nuJWz2J1UNKftO4NMJmBOJoJq4MbIPpn223XbzpMcklc7+9ZKSuOYfvgCepUpcE2oaexsbO9skbgnzVsrgQoXqhzqS95RkTAfS98FtusmVQM7FR6yKZfS8v3YSJ6NSteaFrXwA79kcZ3z/78hbIq8hQXQUrFwl5slPKx4Ie4yxTjqa1+vhdXf/L92lJFA3N0MjDdY6SapTHJor9UkHo0TUsG8UvfH0jX6epXXlV1MEdAhJzk=","Value":"ewogICJ0aW1lc3RhbXAiIDogMTc0MjU4OTg1NTMyMCwKICAicHJvZmlsZUlkIiA6ICJiODBhZWQ3MTY5NGE0OWE2YTI1YjJjMjRlNDZmNzhkMSIsCiAgInByb2ZpbGVOYW1lIiA6ICJOb25hbWVfU2lzdGVyIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2MzY2ZlNWNlZDQzNWMxOTc3NTAxYzhiZjllMzUwNWVmZjlmM2Q2YmQ2NDAwMTc0NzdhOWYwYTRmZGZkNmRjZmYiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}]}}}}},{Slot:14b,Item:{id:"minecraft:crimson_roots",Count:1b}},{Slot:15b,Item:469},{Slot:16b,Item:{id:"minecraft:fire_charge",Count:16b}},{Slot:17b,Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{"Damage":0}}},{Slot:18b,Item:{id:"minecraft:lava_bucket",Count:1b}},{Slot:19b,Item:{id:"minecraft:nether_wart_block",Count:2b}},{Slot:20b,Item:107},{Slot:21b,Item:{id:"minecraft:nether_wart_block",Count:1b}},{Slot:22b,Item:{id:"minecraft:nether_wart_block",Count:2b}},{Slot:23b,Item:{id:"minecraft:nether_wart_block",Count:2b}},{Slot:24b,Item:{id:"minecraft:fire_charge",Count:16b}},{Slot:25b,Item:{id:"minecraft:nether_wart_block",Count:2b}},{Slot:26b,Item:{id:"minecraft:nether_wart_block",Count:1b}}]