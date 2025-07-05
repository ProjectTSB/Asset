#> asset:container/2282/register
#
# コンテナの定義データ
#
# @within function asset:container/2282/


execute unless loaded -162 147 -350 run return 1

# ID (int)
    data modify storage asset:container ID set value 2282
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [-162, 147, -350]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=down]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:1b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:2b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:3b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:5b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:6b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:7b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:8b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:9b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:10b,Item:{id:"minecraft:netherite_ingot",Count:1b}},{Slot:11b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:12b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:13b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;-1967847242,-1714533621,-1984294746,1278732935],"Name":"saihoku_hiroppi","Properties":{"textures":[{"Signature":"AjqK4Zwaa30o9jdVh0nV2E3Mi7SFrZ6mFEkBnTB3bnfgaE0VY5xjxB4jAOcuLKZODk1dmQuswbb4eHQMHYDejHtd9LNWkg6wyBauuHkQQzqg7QN91KpbsgbdtWYBkZTAy7Zh9khUe+hV+7O76rw5/xq0PlauVwiD6zUgyzkCFDQdZZar7eznz3HfJWhiMbxppxCWgjhfDZ/aiX5ixHfZNFAlZ0LLoqOd2THV4gGqdC0DmB8BellspTBlztD/A/T2g+G+O7WZ+wWct8P6Bj0lBboNHVydLOZMeq9JwjWZaLRS/A07P5Kp9arY/FpKZaO8gCYRP+lk/py/q9AinFhTPTkNQM5vfXVCi4r0OU+E5ong9HrKVW/lTOUIUPgOZ969lYV5FGR3tOmywa0c87czXOXU9EemiaHDY48iAQl06Qb5i71yKgsEP7V5L/0xRnKngtoMW03lIzYPR95/7gaWa0SnndjHrKyKCxsxUNtSR2UqR2hGLXDzuBcF31CeL/oGAGeWoatroTjwy4Tx0areyPSagRldh57rPY3/K3SZqJlc2A0UdD74A2lavJqxGAoCC6j66lXoyUJoPjL592gUlIrl5wxbLBtY5ONnK0/41uoXRXjOl06PmevpYqIShSzVVoHkx9SQ8JTQSixHTw9REJxTMTwFEifzLJYo/lsdUC4=","Value":"ewogICJ0aW1lc3RhbXAiIDogMTc0MzE0MzA3ODUzOSwKICAicHJvZmlsZUlkIiA6ICI4YWI1MDhiNjk5Y2U0YjBiODliYTEwYTY0YzM3ZWE4NyIsCiAgInByb2ZpbGVOYW1lIiA6ICJzYWlob2t1X2hpcm9wcGkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2U1OTk5YTg1YWIyNjU1NGMxMjJmYjE0MmU3N2IxNmMyODA3YTQ0NDhhYTEzNWYxMTE2NjE2OWNkZTBmMTVmNSIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]}}}}},{Slot:14b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:15b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:16b,Item:{id:"minecraft:netherite_ingot",Count:1b}},{Slot:17b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:19b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:20b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:21b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:23b,Item:{id:"minecraft:diamond_block",Count:2b}},{Slot:24b,Item:{PresetItem:"currency/high",Count:3b}},{Slot:25b,Item:{id:"minecraft:diamond_block",Count:1b}},{Slot:26b,Item:{PresetItem:"currency/high",Count:3b}}]