#> asset:mob/0410.heiloang/tick/event/final_flare/particle_floor
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/final_flare/

# フレア召喚
    data modify storage api: Argument.ID set value 2186
    execute positioned ~13 ~ ~13 run function api:object/summon
    data modify storage api: Argument.ID set value 2186
    execute positioned ~ ~ ~13 run function api:object/summon
    data modify storage api: Argument.ID set value 2186
    execute positioned ~-13 ~ ~13 run function api:object/summon
    data modify storage api: Argument.ID set value 2186
    data modify storage api: Argument.ID set value 2186
    execute positioned ~13 ~ ~ run function api:object/summon
    data modify storage api: Argument.ID set value 2186
    execute positioned ~ ~ ~ run function api:object/summon
    data modify storage api: Argument.ID set value 2186
    execute positioned ~-13 ~ ~ run function api:object/summon
    data modify storage api: Argument.ID set value 2186
    data modify storage api: Argument.ID set value 2186
    execute positioned ~13 ~ ~-13 run function api:object/summon
    data modify storage api: Argument.ID set value 2186
    execute positioned ~ ~ ~-13 run function api:object/summon
    data modify storage api: Argument.ID set value 2186
    execute positioned ~-13 ~ ~-13 run function api:object/summon
    data modify storage api: Argument.ID set value 2186
