#> asset:object/1076.airlift/tick/give_load
#
# 
#
# @within function asset:object/1076.airlift/tick/supply

# 回復薬をスポーン(これだけを拾いやすいように発動者側へ寄せて出す)
    data modify storage api: Argument.ID set value 145
    data modify storage api: Argument.Important set value true
    $execute facing entity @p[scores={UserID=$(OwnerID)}] feet positioned ^ ^ ^1 positioned ~ ~1 ~ run function api:artifact/spawn/from_id

# 食料をスポーン
    summon item ~ ~1 ~ {NoGravity:1b,Fire:2s,Glowing:1b,Age:-32768s,Invulnerable:1b,Item:{id:"minecraft:baked_potato",Count:5b}}
    summon item ~ ~1 ~ {NoGravity:1b,Fire:2s,Glowing:1b,Age:-32768s,Invulnerable:1b,Item:{id:"minecraft:bread",Count:5b}}
    summon item ~ ~1 ~ {NoGravity:1b,Fire:2s,Glowing:1b,Age:-32768s,Invulnerable:1b,Item:{id:"minecraft:coal",Count:5b}}
