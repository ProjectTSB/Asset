#> asset:container/1827/register
#
# コンテナの定義データ
#
# @within function asset:container/1827/


execute unless loaded 462 141 -153 run return 1

# ID (int)
    data modify storage asset:container ID set value 1827
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [462, 141, -153]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "minecraft:barrel[facing=up]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "undefined"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{id:"minecraft:end_rod",Count:64b}},{Slot:1b,Item:{PresetItem:"currency/",Count:16b}},{Slot:2b,Item:{PresetItem:"currency/",Count:16b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:4b,Item:1251},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:6b,Item:{PresetItem:"currency/",Count:16b}},{Slot:7b,Item:{PresetItem:"currency/",Count:16b}},{Slot:8b,Item:{id:"minecraft:end_rod",Count:64b}},{Slot:9b,Item:{PresetItem:"currency/",Count:16b}},{Slot:10b,Item:{id:"minecraft:cornflower",Count:16b}},{Slot:11b,Item:{id:"minecraft:golden_carrot",Count:32b}},{Slot:12b,Item:{PresetItem:"currency/",Count:16b}},{Slot:13b,Item:{id:"minecraft:player_head",Count:1b,tag:{"SkullOwner":{"Id":[I;-719684469,1588478473,-2038075359,-8797685],"Name":"satuki_haru","Properties":{"textures":[{"Signature":"t/HBwvpSSzQsykeSiban5RvtwYZlk72V6zFnCIt54dKk6Tc2IWmliKK2muEiMcGeYpHhpxtMmJqAX2EdRKPN1eC43FZ4whkIRC8aEgAGKb4V2LrIcoT2GqUxfn130LhaIZLO4s5HeoHd/76mgY1weg+APv/a+I02cFNMfBqUt4XCcz/Qc3bxqJ4vRuHkYaNv1jZRLuX4+h+wsa+zC640S0TWSVqz4hj6bjlFVIL31wCHsjKvMncvz5iSwlrb1RmhMBNmUWYfc/FFJ8VkE8gMPypS+Eii/DRrkMsEz6VFG20X8x+KYvhiQASWGhLuuUPwm7uVkz2Gd7lixW9fby0z1De1xb6JEeMaa6qqhmb5yLOsIinztwVttUsPHW+Yzq4KJ4KSPURhRnESQ6AT+JwkVx9/w8jJIbHC8urB/mjO5p73jAg6LUYmSushU+NoAK2gdJI3HnU2MLCqaltVYwb7bbIeN6Utd40WW/oRKUGj1AFL/oibVliPB1Bvu83I6AJCK28Mdn/xiFZAWvBoWtA8BLj/pdIEDR45x9X1f/lj1dNriInxIrgW5j1Y9Tgs6N2KI+kuN5/AuENpxsYLLisuys7KV941LWQH2BZxyPQDMhtVwnA5qe536xMAvOwunKSLldpY77n/aWNcJi/2+oLyg8LcDLSTx2VUKEiojYGrzJI=","Value":"ewogICJ0aW1lc3RhbXAiIDogMTc0MzAxNjEyNDI5OSwKICAicHJvZmlsZUlkIiA6ICJkNTFhN2M4YjVlYWU0MjA5ODY4NTcwMjFmZjc5YzIwYiIsCiAgInByb2ZpbGVOYW1lIiA6ICJzYXR1a2lfaGFydSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9jODZiZjk2YWE3MjM0ZTRjYWQwMmNhOWI1YjI4NDYxY2E1ZGY0NzIyNTY5M2NjZjcyOGQxMWFkNWIyYmU3MWYzIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]}}}}},{Slot:14b,Item:{PresetItem:"currency/",Count:16b}},{Slot:15b,Item:{id:"minecraft:golden_carrot",Count:32b}},{Slot:16b,Item:{id:"minecraft:cherry_sapling",Count:16b}},{Slot:17b,Item:{PresetItem:"currency/",Count:16b}},{Slot:18b,Item:{PresetItem:"currency/high",Count:32b}},{Slot:19b,Item:1141},{Slot:20b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:21b,Item:{PresetItem:"currency/high",Count:32b}},{Slot:22b,Item:{PresetItem:"sacred_shard/lv-4",Count:2b}},{Slot:23b,Item:{PresetItem:"currency/high",Count:32b}},{Slot:24b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:25b,Item:1082},{Slot:26b,Item:{PresetItem:"currency/high",Count:32b}}]