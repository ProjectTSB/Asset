#> asset:mob/0365.frestchika/tick/base_move/skill/holo_block/block/summon_2
#
# ２つ積む
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/holo_block/pattern/**

# 演出
    playsound minecraft:block.amethyst_block.place block @a ~ ~ ~ 2 1

# 召喚
    data modify storage api: Argument.ID set value 2238
    execute if block ~ ~ ~ #asset:mob/0365.frestchika/no_collision run function api:object/summon

# 召喚
    data modify storage api: Argument.ID set value 2238
    execute positioned ~ ~1 ~ if block ~ ~ ~ #asset:mob/0365.frestchika/no_collision run function api:object/summon
