#> asset:container/2711/register
#
# コンテナの定義データ
#
# @within function asset:container/2711/


execute unless loaded 482 147 -134 run return 1

# ID (int)
    data modify storage asset:container ID set value 2711
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [482, 147, -134]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=west,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:1b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:2b,Item:1114},{Slot:3b,Item:1106},{Slot:4b,Item:1106},{Slot:5b,Item:1106},{Slot:6b,Item:1116},{Slot:7b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:8b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:9b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:10b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:11b,Item:1114},{Slot:12b,Item:1106},{Slot:13b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;-719684469,1588478473,-2038075359,-8797685],"Name":"satuki_haru","Properties":{"textures":[{"Signature":"iNnfl3io5sxGSBRRxhhvoqNbmCQvEcbvOZlt2ZvTrgDl054QMrfY8NGyopBxqqITwPnKbeGXKqATAOUx3dpWU5JtcTL0wpAodbtL9wzgj3BZ/L9qVYMfjjGT47qQcZuzqadtcaNjXPKetLJ6uv5VTsuOV3tGrgt3JI81rWbYCdDmGE0FGSpvF4GSM5TDF7xoJXD1OP5ET+sqKfqLis2y9wrdUfKty7w6WhN3+RChvezOw55x7091AubBr2jolAIn4OQb4lR+H24LXVIE9dHEmCPC/wAIlVmR06r9CGkSkVqTyaZh1yYeM8q46EMJ2UgKHHT2wQINeGKmn50tLCgCVrDJSuh7NmIpTD1kcba619z4BOSwiatWCmYqoWka16NiAKZBkGNnm5mLK2U1JPT96z0SBT6X2G7pWtf0OD88DGges8T3/RwKBNNk6WCcfrlBGuNKzJkoPbmI71Qj5DK2pcqoF84TxQPZDAwcvIiDPsYt6B4eFA8uoU/OeRQeOazVTeqKm+UE88XT/Q1BIQYkK5JqpwlIOn8aFAXNkNItjAFzb+tnJo/j0YuRwOnMp9uDXZCunbEVatGEOAKX0ByGx9IGulSndFkkWn2N4I1MkfKEvcvLNQJ8yrW4JYtAFy2PaJ9tGOSfetq2iBah3OZUOUnalFc6evG/XDcMY0ZRRoM=","Value":"ewogICJ0aW1lc3RhbXAiIDogMTc0MjU4NzM0ODAwNywKICAicHJvZmlsZUlkIiA6ICJkNTFhN2M4YjVlYWU0MjA5ODY4NTcwMjFmZjc5YzIwYiIsCiAgInByb2ZpbGVOYW1lIiA6ICJzYXR1a2lfaGFydSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9kYjk3MjdiYmM0MjVmOTJkZDQ0OGRlOGU4ZDk2ODY5NzBmNGYyYjg4YzI5MWM0NjkzYzU5Zjg4MGViNmYwNTY2IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]}},"disolay":{"Name":"{\"text\":\"saτuki_haruaの頭\",\"color\":\"yellow\",\"italic\":false}"},"display":{"Name":"{\"text\":\"saτuki_haruの頭\",\"color\":\"yellow\",\"italic\":false}"}}}},{Slot:14b,Item:1106},{Slot:15b,Item:1116},{Slot:16b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:17b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:18b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:19b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:20b,Item:1114},{Slot:21b,Item:1106},{Slot:22b,Item:1106},{Slot:23b,Item:1106},{Slot:24b,Item:1116},{Slot:25b,Item:{id:"minecraft:cookie",Count:1b}},{Slot:26b,Item:{id:"minecraft:cookie",Count:1b}}]