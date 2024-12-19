#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/drone
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/use_weapon

# ドローン召喚
    data modify storage api: Argument.ID set value 214
    execute anchored eyes positioned ^2 ^ ^-2 positioned ~ ~-2 ~ run function api:mob/summon

    data modify storage api: Argument.ID set value 214
    execute anchored eyes positioned ^ ^ ^-4 positioned ~ ~-2 ~ run function api:mob/summon

    data modify storage api: Argument.ID set value 214
    execute anchored eyes positioned ^-2 ^ ^-2 positioned ~ ~-2 ~ run function api:mob/summon
