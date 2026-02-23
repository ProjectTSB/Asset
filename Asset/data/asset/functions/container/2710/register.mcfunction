#> asset:container/2710/register
#
# コンテナの定義データ
#
# @within function asset:container/2710/


execute unless loaded 442 147 -172 run return 1

# ID (int)
    data modify storage asset:container ID set value 2710
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [442, 147, -172]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:chest[facing=south,waterlogged=false,type=single]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:1b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:2b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:3b,Item:{id:"minecraft:gunpowder",Count:1b}},{Slot:4b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;-719684469,1588478473,-2038075359,-8797685],"Name":"satuki_haru","Properties":{"textures":[{"Signature":"iJ/6TLAlzqFftuNDRmwRwEStHBFD4xzt4dEw2PztuI5GXiS/+p8OZUvdqovo4/jEoPlqMho657Is01iK1XQ0fkZM2os5QwNHeKrQongN2DTf6ytjccv8/OZ6wkga5nRmd0TCaLaO45dxCgPvQ2Z9fgyv9f0jgD49WB2JpgYb9IkK94G5abJBwq3Tott4xT+NW0Ych7V0pDB5YhbxUm4BMM4paSJJf+Wsc7p+P5bdEtuzdk29NGVpzFuXmGsV6BuXDsyeKcWxK7W6WYGomaUKUukOhSkrK54fqQP99Dgw712OrwR9A9qVxUJuqtK8PF6xZbwv96eJs6G2xKShpbDHYQTSv8N1yjW+OfMRCmDPSZ17tT8I4T9FUkjGJnr406gLI1SG99JtX5M0dB/QbgSd0UZKtI9zn1/dGsDFHEfwy47meRJAzKn5+9Q7oxGFASDu0VMPlv6gHjgU2qmO6bejpOdz0AKaiNEyvc/yruFSLK/3og9Sj00QakFfROR0wO38C+T9L5HZiBbj3y5QumNnP0nGLC3yaYg0N1OPc2F0U21m/kO4/hqfzkNt212OyTLR03fIN8esJe//JFgD9ivsnVt4H9CLIKW507xY0zjQDt1onmMd2UNR0dmplwn0UB+vhgygYtmYvduJ+jZZnY1o7otydFgPUz4+uAP8PThbpOM=","Value":"ewogICJ0aW1lc3RhbXAiIDogMTc0MjU4NzQxNTg4MSwKICAicHJvZmlsZUlkIiA6ICJkNTFhN2M4YjVlYWU0MjA5ODY4NTcwMjFmZjc5YzIwYiIsCiAgInByb2ZpbGVOYW1lIiA6ICJzYXR1a2lfaGFydSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS84NDczZTk0NWNiZWRkYmNjZTQ3MzcwMjA0ODNlNmRiZmE4ZWYzYmIwYmI0YWUxYmI0MTQxZmNmMDZjZmYyN2Y0IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]}},"display":{"Name":"{\"text\":\"sαtuki_haruの頭\",\"color\":\"yellow\",\"italic\":false}"}}}},{Slot:5b,Item:{id:"minecraft:gunpowder",Count:1b}},{Slot:6b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:7b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:8b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:9b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:10b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:11b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:12b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:13b,Item:1037},{Slot:14b,Item:{PresetItem:"currency/high",Count:6b}},{Slot:15b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:16b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:17b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:18b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:19b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:20b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:21b,Item:{id:"minecraft:gunpowder",Count:1b}},{Slot:22b,Item:{PresetItem:"currency/high",Count:4b}},{Slot:23b,Item:{id:"minecraft:gunpowder",Count:1b}},{Slot:24b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:25b,Item:{id:"minecraft:blaze_rod",Count:1b}},{Slot:26b,Item:{id:"minecraft:blaze_rod",Count:1b}}]