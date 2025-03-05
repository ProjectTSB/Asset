#> asset:mob/0301.karmic/tick/common/slash_obj_summon
#
#
#
# @within function asset:mob/0301.karmic/tick/**

# 斬撃召喚
    data modify storage api: Argument.ID set value 2001
    execute rotated ~ 0 run function api:object/summon
