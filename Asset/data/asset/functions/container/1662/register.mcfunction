#> asset:container/1662/register
#
# コンテナの定義データ
#
# @within function asset:container/1662/


execute unless loaded 85 156 1952 run return 1

# ID (int)
    data modify storage asset:container ID set value 1662
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [85, 156, 1952]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:cod",Count:22b}},{Slot:1b,Item:{id:"minecraft:salmon",Count:22b}},{Slot:2b,Item:{id:"minecraft:cod",Count:22b}},{Slot:3b,Item:{PresetItem:"currency/high",Count:22b}},{Slot:4b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;-901163715,-830585601,-1908644757,-686299235],"Name":"ChenCMD","Properties":{"textures":[{"Signature":"FrBTNKz721mwxGHT/Z/08NbKkf+Xi3KFExnNDyAWvSxV2EsA5hNV/OnTGwfTmLGzJlac/HSvE5Q4yNgYDaiZ2Wk7HoCcJ14R4kQpd9Sqx+kyY+C8uaERdHHlIz59ZeyUp2LOvjZ/DkVPymmWAdde8mYpHWViOi8fFGZgQ1k5kUg06E1VNs2xcqSNAqrt9NKuMiGGYbTNh/8f5B/Q4eg8nivDLdRkoxDqKfjbDa5Hw3RRnf4as6k91dj6Qc+T7pMcwxoNsnW24oeOSX98M/cKy/WR58bkTKYA4c8SzaifIN78+6uJ2H1bloDj2ihO30U0hymqAlW5u4ku+ktXzub+/HLkAwB01orPEKU5csC8rq5EqYq4Ea88oX4IgR9NzhdQWWTG5pzICh+fIDW5OuUrQBBVNKjEzt4cvkF/+JP4dqOnZJbCLEX+dgnFn9HmUWzvuyglfcrNvRsEqT/KGBR8ayX7pUZrNrlLL3k3ewP/boI/uqjAUephbZ8xmevgTKgSGJKShHx2xffQBL2xfo64rjqWjmeTMXB1SnIdKSxchCysJXC9P0/j7dBc/4F/AEVIZ0/o9zhzNNUPScT5LqzjvLoaXSGnNZS9NXyqlqY+cutMeOSpJUdxPHNnbMDMKra/CC33fAzaMTWQUzG85+VdUZmAyIljru+1s9aiFVupw0Y=","Value":"ewogICJ0aW1lc3RhbXAiIDogMTczNjE3OTkzNTQ1NiwKICAicHJvZmlsZUlkIiA6ICJjYTQ5NTUzZGNlN2U0NGZmOGUzYzY0NmJkNzE3ZTc5ZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJDaGVuQ01EIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzkzZWRiZmZmOTVlNzYzMzgyNjFmNmNlYmQ3NzAyNjAxYTQzMWQxZDc3NWEzMmQ2NjY1M2ExMTNkNjdlZjljYmIiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}]}}}}},{Slot:5b,Item:{PresetItem:"currency/high",Count:22b}},{Slot:6b,Item:{id:"minecraft:cod",Count:22b}},{Slot:7b,Item:{id:"minecraft:salmon",Count:22b}},{Slot:8b,Item:{id:"minecraft:cod",Count:22b}},{Slot:9b,Item:610},{Slot:10b,Item:{id:"minecraft:tropical_fish",Count:22b}},{Slot:11b,Item:237},{Slot:12b,Item:{id:"minecraft:tropical_fish",Count:22b}},{Slot:13b,Item:258},{Slot:14b,Item:{id:"minecraft:tropical_fish",Count:22b}},{Slot:15b,Item:152},{Slot:16b,Item:{id:"minecraft:tropical_fish",Count:22b}},{Slot:17b,Item:1217},{Slot:18b,Item:{id:"minecraft:cod",Count:22b}},{Slot:19b,Item:{id:"minecraft:salmon",Count:22b}},{Slot:20b,Item:{id:"minecraft:cod",Count:22b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:22b}},{Slot:22b,Item:217},{Slot:23b,Item:{PresetItem:"currency/high",Count:22b}},{Slot:24b,Item:{id:"minecraft:cod",Count:22b}},{Slot:25b,Item:{id:"minecraft:salmon",Count:22b}},{Slot:26b,Item:{id:"minecraft:cod",Count:22b}}]