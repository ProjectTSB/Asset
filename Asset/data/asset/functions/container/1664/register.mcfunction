#> asset:container/1664/register
#
# コンテナの定義データ
#
# @within function asset:container/1664/


execute unless loaded 278 132 125 run return 1

# ID (int)
    data modify storage asset:container ID set value 1664
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [278, 132, 125]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=east,waterlogged=false,type=right]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:8b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:10b,Item:{PresetItem:"currency/",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/",Count:1b}},{Slot:14b,Item:{PresetItem:"currency/",Count:1b}},{Slot:15b,Item:{PresetItem:"currency/",Count:1b}},{Slot:16b,Item:{PresetItem:"currency/",Count:1b}},{Slot:18b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:19b,Item:{PresetItem:"currency/",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/",Count:1b}},{Slot:22b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;-1052120914,1849049779,-1340237759,-2021394429],"Name":"uran1132","Properties":{"textures":[{"Signature":"o0oDN3Mj0EV2Wt9BzyFeGqJD39amGBEPHB1sMSQChOW6vD4TVCQfONt5+7pQVvER5V8cs9MRVu06qjm1ikiF8nYfXpNMLGDjA9RtjSFqaWIhseA6cTOArdqE2Ww9o7TK1JkTFw0k64coKON9a+DP3+x37e040mDcmaZ6esbgqvwhA0zVqTzm2Dto1A/Xv5/ehQJfurvXYG38M7pcWNTJiAMMWHqb0mhW04oS8H8OrNNiuxTHkPjTMldPE62Ujb/AlizLJ3vmpdjqQFsEVJzoVIStI7m0ZdgiM24cCC80F9+SvWpFwKmW7hL/uGai7ECQB8LE2hUYgMvrAzGX17NeJ4k/oAMF1S9lJ8G/Irs6ynFEQE/tzWPcqbpZbSzftC2cGtrfgfxc0jpc2fzrvsuNA7NHyA3jFLDhuJtXFeG30wn3xAWxIlMJKR3XsjD960K40yrZTOLyqc5iEgrL1Fqospyva2SJHD4AKE3fg6sjI4+GaoparYn3X2C/2WqS8xLy50i5JL7XNN33ZUIslfZt23BfyNuKqpw2EwJ1YSsiyxpWn6spx5Ps0Lslo3Sz6nZPT3jeWOKlhrMG1T7xG+/18Oszd4m/zgtbWqz771EX3G/lASpSGtRqPpoHn3NJhzCGn2M5gMQtY9PdkG4J3JzFKhgtIaeWzDRn75WmDl0YhsQ=","Value":"ewogICJ0aW1lc3RhbXAiIDogMTc0MjU4ODM2ODUxOSwKICAicHJvZmlsZUlkIiA6ICJjMTQ5ZThhZTZlMzY0MmIzYjAxZDk4NDE4NzgzZjgwMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJ1cmFuMTEzMiIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9hNjc1ZTk3OGE1ZTA2MjQwYzE0MTMyNTAzYjZjNzJlNzIxYjkxODk3ZDdiNDkyMzhiZDEyMThmZjNlNzM2ZjdjIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]}}}}},{Slot:23b,Item:{PresetItem:"currency/",Count:1b}},{Slot:25b,Item:{PresetItem:"currency/",Count:1b}},{Slot:26b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}}]