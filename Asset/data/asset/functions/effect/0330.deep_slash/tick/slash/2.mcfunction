#> asset:effect/0330.deep_slash/tick/slash/2
#
#
#
# @within function asset:effect/0330.deep_slash/tick/

# 演出用Object召喚
    data modify storage api: Argument.ID set value 1133
    data modify storage api: Argument.FieldOverride.Count set value 2
    execute anchored eyes positioned ^ ^-0.2 ^1.5 run function api:object/summon
