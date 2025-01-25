#> asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/summon_pillar
# テルツェット・アライニング
#
# @within
#   function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/
#   function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/

# 氷柱設置
    data modify storage api: Argument.ID set value 2180
    execute rotated ~ ~ positioned ^ ^ ^16 run function api:object/summon
    data modify storage api: Argument.ID set value 2180
    execute rotated ~60 ~ positioned ^ ^ ^16 run function api:object/summon
    data modify storage api: Argument.ID set value 2180
    execute rotated ~120 ~ positioned ^ ^ ^16 run function api:object/summon
    data modify storage api: Argument.ID set value 2180
    execute rotated ~180 ~ positioned ^ ^ ^16 run function api:object/summon
    data modify storage api: Argument.ID set value 2180
    execute rotated ~240 ~ positioned ^ ^ ^16 run function api:object/summon
    data modify storage api: Argument.ID set value 2180
    execute rotated ~300 ~ positioned ^ ^ ^16 run function api:object/summon
