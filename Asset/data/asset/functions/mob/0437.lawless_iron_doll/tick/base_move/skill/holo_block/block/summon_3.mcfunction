#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/holo_block/block/summon_3
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/holo_block/pattern/1

# 演出
    playsound minecraft:block.amethyst_block.place block @a ~ ~ ~ 2 1

# 召喚
    data modify storage api: Argument.ID set value 2238
    execute positioned ~ ~-1 ~ if block ~ ~ ~ #asset:mob/0437.lawless_iron_doll/no_collision run function api:object/summon

# 召喚
    data modify storage api: Argument.ID set value 2238
    execute if block ~ ~ ~ #asset:mob/0437.lawless_iron_doll/no_collision run function api:object/summon

# 召喚
    data modify storage api: Argument.ID set value 2238
    execute positioned ~ ~1 ~ if block ~ ~ ~ #asset:mob/0437.lawless_iron_doll/no_collision run function api:object/summon
