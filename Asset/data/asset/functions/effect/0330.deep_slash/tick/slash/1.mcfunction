#> asset:effect/0330.deep_slash/tick/slash/1
#
#
#
# @within function asset:effect/0330.deep_slash/tick/

# 演出
    playsound block.conduit.activate player @a ~ ~ ~ 0.7 1.2
    playsound block.conduit.activate player @a ~ ~ ~ 0.7 1.25
    #playsound item.trident.throw player @a ~ ~ ~ 0.7 0.7

# 演出用Object召喚
    data modify storage api: Argument.ID set value 1133
    data modify storage api: Argument.FieldOverride.Count set value 1
    execute anchored eyes positioned ^ ^-0.2 ^1.5 run function api:object/summon
